﻿using GraphQL;
using GraphQL.DataLoader;
using Microsoft.EntityFrameworkCore;
using Movies.API.Data;
using Movies.API.GraphQL.Types.Enums;

namespace Movies.API.GraphQL.Types
{
    public class MovieType : ObjectGraphType<Movie>
    {
        public MovieType(MoviesDbContext db, IDataLoaderContextAccessor dataLoader)
        {
            Field(a=>a.Id).Description("Id of movie");
            Field(a=>a.Name).Description("Name of movie");
            Field(a=>a.Description).Description("Description of movie");
            Field(a=>a.LaunchDate).Description("Launch date of movie");
            Field<MovieGenreType>("genre").Description("Genre of movie");
            Field<ListGraphType<MovieReviewType>>("reviews").Description("Reviews of movie")
                .Resolve(context =>
                {
                    if (context.Source.Reviews != null) return context.Source.Reviews;

                    var loader = dataLoader.Context
                                    .GetOrAddCollectionBatchLoader<int, MovieReview>("GetMoviesReviewsByMovieId",
                                        async moviesIds =>
                                        {
                                            var reviews = await db.Reviews.Where(a => moviesIds.Contains(a.MovieId)).ToListAsync();

                                            return reviews.ToLookup(a=>a.MovieId);
                                        }
                                    );
                    var movieId = context.Source.Id;

                    return loader.LoadAsync(movieId);
                });
        }
    }
}
