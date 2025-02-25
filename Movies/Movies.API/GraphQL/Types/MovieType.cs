﻿using Microsoft.EntityFrameworkCore;
using Movies.API.Data;
using Movies.API.GraphQL.Types.Enums;

namespace Movies.API.GraphQL.Types
{
    public class MovieType : ObjectGraphType<Movie>
    {
        public MovieType(MoviesDbContext db)
        {
            Field(a=>a.Id).Description("Id of movie");
            Field(a=>a.Name).Description("Name of movie");
            Field(a=>a.Description).Description("Description of movie");
            Field(a=>a.LaunchDate).Description("Launch date of movie");
            Field<MovieGenreType>("genre").Description("Genre of movie");
            Field<ListGraphType<MovieReviewType>>("reviews").Description("Reviews of movie")
                .ResolveAsync(async context =>
                {
                    var movieId = context.Source.Id;
                    return await db.Reviews.Where(a => a.MovieId == movieId).ToListAsync();
                });
        }
    }
}
