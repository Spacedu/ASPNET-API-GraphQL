using Movies.API.GraphQL.Subscriptions.Messages;
using Movies.API.GraphQL.Types;

namespace Movies.API.GraphQL.Subscriptions
{
    public class MovieSubscription : ObjectGraphType
    {
        private readonly MovieMessage _movieMessage;
        public MovieSubscription(MovieMessage movieMessage)
        {
            _movieMessage = movieMessage;

            Field<MovieType, Movie>("movieAdded").ResolveStream(context => {
                return _movieMessage.ReceiveMovie();
            });
        }
    }
}
