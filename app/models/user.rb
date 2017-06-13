class User < ApplicationRecord
  has_many :items
  has_many :votes
  has_many :comments
  has_many :travelers
  has_many :trips, through: :travelers

  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true


  def full_name
    self.first_name + " " + self.last_name
  end
end
