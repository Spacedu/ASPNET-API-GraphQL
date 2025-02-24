namespace Movies.API.GraphQL.Types
{
    public class MovieReviewType : ObjectGraphType<MovieReview>
    {
        public MovieReviewType()
        {
            Field(a=>a.Id).Description("Id of review");
            Field(a => a.Rate).Description("Rate of review");
            Field(a => a.Comment).Description("Comment of review");
            Field(a => a.CreatedAt).Description("Date of create of review");
            Field(a => a.MovieId).Description("MovieId of review");
        }
    }
}
