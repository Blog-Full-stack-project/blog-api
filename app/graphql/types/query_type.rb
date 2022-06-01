module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Users
    field :users, resolver: Queries::UserQuery::Users
    field :user, resolver: Queries::UserQuery::ShowUser

    # Posts
    field :posts, resolver: Queries::PostQuery::Posts
    field :post, resolver: Queries::PostQuery::ShowPost
    field :my_posts, resolver: Queries::PostQuery::MyPosts
    field :my_archived_posts, resolver: Queries::PostQuery::MyArchivedPosts

  end
end
