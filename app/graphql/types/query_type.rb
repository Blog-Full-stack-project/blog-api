module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Users
    field :users, resolver: Queries::UserQuery::Users
    field :user, resolver: Queries::UserQuery::ShowUser

    # Posts
    field :posts, [Types::PostType], null: false
    def posts
      check_authentication
      
      Post.order("created_at DESC")
    end

    field :my_posts, [Types::PostType], null: false
    def my_posts
      check_authentication

      current_user.posts
    end

    field :my_archived_posts, [Types::PostType], null: false
    def my_archived_posts
      check_authentication

      current_user.posts.only_deleted
    end

    field :post, Types::PostType, null: true do
      argument :id, ID, required: true
    end
    def post(id:)
      check_authentication

      Post.find(id)
    rescue ActiveRecord::RecordNotFound => e
      raise GraphQL::ExecutionError, e.message
    end
    
  end
end
