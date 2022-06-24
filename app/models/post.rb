class Post < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
  
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

end
