module Queries
  module PostQuery
    class Posts < Queries::BaseQuery
      type [Types::PostType], null: false

      def resolve
        check_authentication

        Post.all.order("updated_at DESC")
      end
    end
  end
end