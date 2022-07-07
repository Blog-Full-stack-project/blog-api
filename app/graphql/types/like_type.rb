# frozen_string_literal: true

module Types
  class LikeType < Types::BaseObject
    field :id, ID, null: false
    field :post_id, Integer
    field :user_id, Integer
  end
end
