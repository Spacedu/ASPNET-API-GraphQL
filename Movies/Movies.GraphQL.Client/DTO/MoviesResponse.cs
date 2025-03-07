using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Movies.Models;

namespace Movies.GraphQL.Client.DTO
{
    public class MoviesResponse
    {
        public List<Movie> Movies { get; set; }
    }
}
