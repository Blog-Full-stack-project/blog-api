module Queries
  module UserQuery
    class ShowUser < Queries::BaseQuery
      type Types::UserType, null: false

      def resolve
        check_authentication

        current_user
      end
    end
  end
end