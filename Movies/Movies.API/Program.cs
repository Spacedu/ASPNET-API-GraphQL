using GraphQL;
using Microsoft.EntityFrameworkCore;
using Movies.API.Data;
using Movies.API.GraphQL;
using Movies.API.GraphQL.Mutations;
using Movies.API.GraphQL.Queries;
using Movies.API.GraphQL.Subscriptions;

var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("Movies");
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddDbContext<MoviesDbContext>(options => options.UseSqlServer(connectionString));
builder.Services.AddScoped<MovieQuery>();
builder.Services.AddScoped<MovieMutation>();
builder.Services.AddScoped<MovieSubscription>();
builder.Services.AddScoped<MovieSchema>();
builder.Services.AddGraphQL(options=>options.AddGraphTypes().AddSystemTextJson().AddDataLoader());

var app = builder.Build();
app.UseWebSockets();
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseGraphQL<MovieSchema>();
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
