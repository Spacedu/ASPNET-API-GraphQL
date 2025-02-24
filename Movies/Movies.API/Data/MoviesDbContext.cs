using Microsoft.EntityFrameworkCore;
using Movies.API.Models;

namespace Movies.API.Data
{
    public class MoviesDbContext : DbContext
    {
        public DbSet<Movie> Movies { get; set; }
        public DbSet<MovieReview> Reviews { get; set; }

        public MoviesDbContext(DbContextOptions<MoviesDbContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Movie>().Property(e => e.Genre).HasConversion<string>();
        }
    }
}
