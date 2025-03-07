using Movies.API.GraphQL.Types;

namespace Movies.API.GraphQL.Subscriptions
{
    public class MovieSubscription : ObjectGraphType
    {
        public MovieSubscription()
        {
            Field<MovieType, Movie>("movieAdded");
        }
    }
}
