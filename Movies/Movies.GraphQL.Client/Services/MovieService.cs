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
                Query = "{ movie(id:"+id+") { id name description launchDate genre } }"
            };

            var response = await Client.SendQueryAsync<MovieResponse>(query);

            return response.Data.Movie;

        }
    }
}
