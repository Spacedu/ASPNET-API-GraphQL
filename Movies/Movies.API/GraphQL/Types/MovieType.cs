namespace Movies.API.GraphQL.Types
{
    public class MovieType : ObjectGraphType<Movie>
    {
        public MovieType()
        {
            Field(a=>a.Id).Description("Id of movie");
            Field(a=>a.Name).Description("Name of movie");
            Field(a=>a.Description).Description("Description of movie");
            Field(a=>a.LaunchDate).Description("Launch date of movie");
            Field(a=>a.Genre).Description("Genre of movie");
            Field(a=>a.Reviews).Description("Reviews of movie");
        }
    }
}
