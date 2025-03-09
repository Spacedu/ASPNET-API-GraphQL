using Movies.GraphQL.Client.Services;
using Movies.Models;

var service = new MovieService();

var sub = service.SubscriptionMovieAdded();

sub.Subscribe(response =>
{
    Console.WriteLine($"Sub - Movie Added: {response.Data.Movie.Id} - {response.Data.Movie.Name}");
});

/*
var movie = await service.GetMovie(51);
Console.WriteLine($"Movie: {movie.Name}");


var movies = await service.GetMovies();
Console.WriteLine($"Total of movies: {movies.Count}");

var newMovie = new Movie() { 
    Name = "Film 1", 
    Description = "Description of film 1", 
    LaunchDate = DateTime.Now, 
    Genre = Movies.Models.Enums.MovieGenre.Comedy 
};

var addedMovie = await service.AddMovie(newMovie);
Console.WriteLine($"Movie added - Id: {addedMovie.Id} - Name: {addedMovie.Name}");


var updateMovieId = 1002;
var updateMovie = new Movie() { 
    Name = "Film 2", 
    Description = "Description of film 2", 
    LaunchDate = DateTime.Now, 
    Genre = Movies.Models.Enums.MovieGenre.Comedy 
};

var updatedMovie = await service.UpdateMovie(updateMovieId, updateMovie);
Console.WriteLine($"Movie updated - Id: {updatedMovie.Id} - Name: {updatedMovie.Name} - Description: {updatedMovie.Description}");

var movieIdToDelete = 1014;
bool deleted = await service.DeleteMovie(movieIdToDelete);

Console.WriteLine($"Movie deleted {movieIdToDelete} - {deleted}");
*/
Console.ReadKey();