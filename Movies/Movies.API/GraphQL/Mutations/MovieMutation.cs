using GraphQL;
using Movies.API.Data;
using Movies.API.GraphQL.Types;
using Movies.API.GraphQL.Types.Inputs;

namespace Movies.API.GraphQL.Mutations
{
    public class MovieMutation : ObjectGraphType
    {
        public MovieMutation(MoviesDbContext db)
        {
            Field<MovieType>("addMovie").Arguments(
                new QueryArgument<NonNullGraphType<MovieInputType>>()
                {
                    Name = "movie",
                    Description = "Movie input parameter"
                }
            )
            .ResolveAsync(async context => {
                var movie = context.GetArgument<Movie>("movie");
                
                db.Movies.Add(movie);
                await db.SaveChangesAsync();

                return movie;
            });
            Field<MovieType>("updateMovie").Arguments(
                new QueryArgument<NonNullGraphType<IdGraphType>>() { 
                    Name = "id",
                    Description = "Id input parameter"
                },
                new QueryArgument<NonNullGraphType<MovieInputType>>()
                {
                    Name = "movie",
                    Description = "Movie input parameter"
                }
            )
            .ResolveAsync(async context => {
                var id = context.GetArgument<int>("id");
                var movie = context.GetArgument<Movie>("movie");
                movie.Id = id;

                db.Movies.Update(movie);
                await db.SaveChangesAsync();

                return movie;
            });
            Field<BooleanGraphType>("deleteMovie").Arguments(
                new QueryArgument<NonNullGraphType<IdGraphType>>()
                {
                    Name = "id",
                    Description = "Id input parameter"
                }
            ).ResolveAsync(async context => {
                var id = context.GetArgument<int>("id");

                var movie = await db.Movies.FindAsync(id);
                if(movie is not null) { 
                    db.Movies.Remove(movie);
                    await db.SaveChangesAsync();

                    return true;
                }

                return false;
            });
        }
    }
}
