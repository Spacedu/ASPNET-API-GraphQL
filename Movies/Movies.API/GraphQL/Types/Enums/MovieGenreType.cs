namespace Movies.API.GraphQL.Types.Enums
{
    public class MovieGenreType : EnumerationGraphType<MovieGenre>
    {
        public MovieGenreType()
        {
            Name = "Genre";
            Description = "The genre of movie";
        }
    }
}
