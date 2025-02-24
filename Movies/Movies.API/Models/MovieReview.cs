namespace Movies.API.Models
{
    public class MovieReview
    {
        public int Id { get; set; }
        public int Rate { get; set; }
        public string Comment { get; set; } = null!;
        public DateTime CreatedAt { get; set; }

        public int MovieId { get; set; }
        public Movie Movie { get; set; } = null!;
    }
}
