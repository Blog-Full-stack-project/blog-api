module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    # methods that should be inherited can go here.
    # like a `current_tenant` method, or methods related
    # to the `context` object
    def check_authentication
      raise GraphQL::ExecutionError, "Token required for this action." if context[:current_user].blank?
    end

    def current_user
      context[:current_user]
    end
  end
end