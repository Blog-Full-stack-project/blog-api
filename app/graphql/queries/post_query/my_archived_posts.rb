module Queries
  module PostQuery
    class MyArchivedPosts < Queries::BaseQuery
      type [Types::PostType], null: true

      def resolve
        check_authentication

        current_user.posts.only_deleted
      end
    end
  end
end