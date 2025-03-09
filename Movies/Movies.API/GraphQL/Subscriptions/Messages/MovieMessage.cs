using System.Reactive.Linq;
using System.Reactive.Subjects;

namespace Movies.API.GraphQL.Subscriptions.Messages
{
    public class MovieMessage
    {
        private readonly ISubject<Movie> _movieMessage = new ReplaySubject<Movie>(1);

        public IObservable<Movie> ReceiveMovie()
        {
            return _movieMessage.AsObservable();
        }

        public Movie AddMovie(Movie movie)
        {
            _movieMessage.OnNext(movie);
            return movie;
        }
    }
}
