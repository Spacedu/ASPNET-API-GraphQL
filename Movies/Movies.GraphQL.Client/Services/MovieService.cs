using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphQL;
using Movies.GraphQL.Client.DTO;
using Movies.Models;

namespace Movies.GraphQL.Client.Services
{
    public class MovieService : GraphQLClient
    {
        public async Task<Movie> GetMovie(int id)
        {
            var query = new GraphQLRequest()
            {
                Query = "query GetMovie($movieId: Int!) { movie(id:$movieId) { id name description launchDate genre } }",
                Variables = new { movieId = id }
            };

            var response = await Client.SendQueryAsync<MovieResponse>(query);

            return response.Data.Movie;
        }
        public async Task<List<Movie>> GetMovies()
        {
            var query = new GraphQLRequest()
            {
                Query = "{ movies { id name description launchDate genre } }",
            };

            var response = await Client.SendQueryAsync<MoviesResponse>(query);

            return response.Data.Movies;
        }
        public async Task<Movie> AddMovie(Movie movie)
        {
            var query = new GraphQLRequest()
            {
                Query = "mutation AddMovie($movie:MovieInput!) { movie:addMovie( movie:$movie ) { id name description launchDate genre } }",
                Variables = new { movie = new { movie.Name, movie.Description, movie.LaunchDate, movie.Genre } }
            };

            var response = await Client.SendMutationAsync<MovieResponse>(query);

            return response.Data.Movie;
        }
        public async Task<Movie> UpdateMovie(int id, Movie movie)
        {
            var query = new GraphQLRequest()
            {
                
                Query = "mutation UpdateMovie($id:ID! $movie:MovieInput!) { movie:updateMovie(id:$id movie:$movie ) { id name description launchDate genre } }",
                Variables = new { id = id, movie = new { movie.Name, movie.Description, movie.LaunchDate, movie.Genre } }
            };

            var response = await Client.SendMutationAsync<MovieResponse>(query);

            return response.Data.Movie;
        }
        public async Task<Boolean> DeleteMovie(int id)
        {
            var query = new GraphQLRequest()
            {
                Query = "mutation DeleteMovie($id:ID!) { deleted:deleteMovie(id:$id) }",
                Variables = new { id = id }
            };

            var response = await Client.SendMutationAsync<DeleteResponse>(query);

            return response.Data.Deleted;
        }
    }
}
