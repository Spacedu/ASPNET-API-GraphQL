using Movies.API.GraphQL.Types.Enums;

namespace Movies.API.GraphQL.Types.Inputs
{
    public class MovieInputType : InputObjectGraphType<Movie>
    {
        public MovieInputType()
        {
            Field(a => a.Name).Description("Name of movie");
            Field(a => a.Description).Description("Description of movie");
            Field(a => a.LaunchDate).Description("Launch date of movie");
            Field<MovieGenreType>("genre").Description("Genre of movie");
        }
    }
}
