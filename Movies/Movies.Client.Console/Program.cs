using Movies.GraphQL.Client.Services;
using Movies.Models;

var service = new MovieService();
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

var addedMovie = await service.AddMovies(newMovie);
Console.WriteLine($"Movie added - Id: {addedMovie.Id} - Name: {addedMovie.Name}");

Console.ReadKey();