using Movies.API.GraphQL.Mutations;
using Movies.API.GraphQL.Queries;
using Movies.API.GraphQL.Subscriptions;

namespace Movies.API.GraphQL
{
    public class MovieSchema : Schema
    {
        public MovieSchema(IServiceProvider service) : base(service)
        {
            Query = service.GetRequiredService<MovieQuery>();
            Mutation = service.GetRequiredService<MovieMutation>();
            Subscription = service.GetRequiredService<MovieSubscription>();
        }
    }
}
