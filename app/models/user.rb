class User < ApplicationRecord
  has_many :items
  has_many :votes
  has_many :comments, as: :commentable
  has_many :travelers
  has_many :trips, through: :travelers

  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
