module Types
  class MutationType < Types::BaseObject
    # users
    field :sigin_in, mutation: Mutations::UserMutation::SiginIn
    field :create_user, mutation: Mutations::UserMutation::CreateUser
    field :update_user, mutation: Mutations::UserMutation::UpdateUser
    field :disable_user, mutation: Mutations::UserMutation::DisableUser
    field :restore_user, mutation: Mutations::UserMutation::RestoreUser

    # posts
    field :create_post, mutation: Mutations::PostMutation::CreatePost
    field :update_post, mutation: Mutations::PostMutation::UpdatePost
    field :disable_post, mutation: Mutations::PostMutation::DisablePost
    field :restore_post, mutation: Mutations::PostMutation::RestorePost

    #comments
    field :create_comment, mutation: Mutations::CommentMutation::CreateComment
    field :update_comment, mutation: Mutations::CommentMutation::UpdateComment
    field :delete_comment, mutation: Mutations::CommentMutation::DeleteComment

    # Likes
    field :create_like, mutation: Mutations::LikeMutation::CreateLike
    field :delete_like, mutation: Mutations::LikeMutation::DeleteLike
  end
end
