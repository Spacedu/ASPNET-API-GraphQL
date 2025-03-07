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
                    Name = "Movie",
                    Description = "Movie input parameter"
                }
            );
            Field<MovieType>("updateMovie").Arguments(
                new QueryArgument<NonNullGraphType<IdGraphType>>() { 
                    Name = "Id",
                    Description = "Id input parameter"
                },
                new QueryArgument<NonNullGraphType<MovieInputType>>()
                {
                    Name = "Movie",
                    Description = "Movie input parameter"
                }
            );
            Field<BooleanGraphType>("deleteMovie").Arguments(
                new QueryArgument<NonNullGraphType<IdGraphType>>()
                {
                    Name = "Id",
                    Description = "Id input parameter"
                }
            );
        }
    }
}
