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
                .ResolveAsync(async a=> await db.Movies.Include(a=>a.Reviews).ToListAsync());

            Field<MovieType>("movie")
                .Arguments(new QueryArguments(new QueryArgument<NonNullGraphType<IntGraphType>>() { Name = "id" }))
                .ResolveAsync(async context =>
                {
                    var id = context.GetArgument<int>("id");
                    return await db.Movies.SingleAsync(a=>a.Id == id);
                });                
        }
    }
}
