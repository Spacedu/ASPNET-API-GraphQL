using GraphQL;
using Microsoft.EntityFrameworkCore;
using Movies.API.Data;
using Movies.API.GraphQL.Types;

namespace Movies.API.GraphQL.Queries
{
    public class MovieQuery : ObjectGraphType
    {
        public MovieQuery(MoviesDbContext db)
        {
            Field<ListGraphType<MovieType>>("movies")
                .Resolve(a=> db.Movies.ToList());

            Field<MovieType>("movie")
                .Arguments(new QueryArguments(new QueryArgument<NonNullGraphType<IntGraphType>>() { Name = "id" }))
                .Resolve(context =>
                {
                    var id = context.GetArgument<int>("id");
                    return db.Movies.Single(a=>a.Id == id);
                });                
        }
    }
}
