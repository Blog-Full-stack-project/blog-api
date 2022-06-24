class Mutations::LikeMutation::CreateLike < Mutations::BaseMutation
  argument :post_id, ID, required: true

  type Types::LikeType

  def resolve(**params)
    check_authentication
    params[:user_id] = current_user.id
    like = Like.find_or_create_by(params)

    like
  end
end