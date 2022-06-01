module Queries
  module PostQuery
    class MyPosts < Queries::BaseQuery
      type [Types::PostType], null: true

      def resolve
        check_authentication

        current_user.posts
      end
    end
  end
end