module Queries
  module UserQuery
    class Users < Queries::BaseQuery
      type [Types::UserType], null: true

      def resolve
        check_authentication
        
        User.all
      end
    end
  end
end