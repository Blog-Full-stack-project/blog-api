# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :topic, String
    field :enabled, Boolean
    field :user, Types::UserType
    field :comments, [Types::CommentType]
    field :count_likes, Integer
    
    def user
      object.user
    end
    
    def comments
      object.comments
    end

    def count_likes
      object.likes.size
    end
  end
end
