module Queries
  module PostQuery
    class ShowPost < Queries::BaseQuery
      argument :id, ID, required: true

      type Types::PostType, null: false

      def resolve(id:)
        check_authentication

        Post.find(id)
      rescue ActiveRecord::RecordNotFound => e
        raise GraphQL::ExecutionError, e.message
      end
    end
  end
end