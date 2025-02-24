using Movies.API.GraphQL.Queries;

namespace Movies.API.GraphQL
{
    public class MovieSchema : Schema
    {
        public MovieSchema(IServiceProvider service) : base(service)
        {
            Query = service.GetRequiredService<MovieQuery>();
        }
    }
}
