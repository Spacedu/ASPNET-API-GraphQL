using GraphQL.Client.Http;
using GraphQL.Client.Serializer.SystemTextJson;

namespace Movies.GraphQL.Client
{
    public class GraphQLClient
    {
        private string Endpoint = "https://localhost:7093/graphql";
        protected readonly GraphQLHttpClient Client;
        public GraphQLClient()
        {
            Client = new GraphQLHttpClient(
                Endpoint,
                new SystemTextJsonSerializer()
            );
        }
    }
}
