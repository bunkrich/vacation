class User < ApplicationRecord
  has_many :items
  has_many :votes
  has_many :comments, as: :commentable
  has_many :travelers
  has_many :trips, through: :travelers

  validates :email, presence: true
  validates :email, uniqueness: true
end
