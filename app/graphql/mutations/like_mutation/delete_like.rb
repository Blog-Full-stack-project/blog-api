class Mutations::LikeMutation::DeleteLike < Mutations::BaseMutation
  argument :post_id, ID, required: true

  field :result, Boolean, null: false
  
  def resolve(**params)
    check_authentication
    params[:user_id] = current_user.id

    like = Like.find_by(params)

    return { result: true } if like.delete

    return { result: false }
  end
end