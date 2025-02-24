using Microsoft.EntityFrameworkCore;
using Movies.API.Data;
using Movies.API.GraphQL.Types;

namespace Movies.API.GraphQL.Queries
{
    public class MovieQuery : ObjectGraphType
    {
        public MovieQuery(MoviesDbContext db)
        {
            Field<ListGraphType<MovieType>>("movies").ResolveAsync(async a=> await db.Movies.ToListAsync());
        }
    }
}
