class User < ApplicationRecord
  has_many :votes
  has_many :comments, as: :commentable
  has_many :travelers
  has_many :trips, through :travelers
  has_many :suggestions
  has_many :items, through :suggestions

  validates :email, presence: true
  validates :email, uniqueness: true
end
