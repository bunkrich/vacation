class User < ApplicationRecord
  has_many :items
  has_many :votes
  has_many :comments
  has_many :travelers
  has_many :trips, through: :travelers

  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true, length: { in: 8..20 }
  validates :password_confirmation, presence: true

  before_save :default_pic

  def full_name
    self.first_name + " " + self.last_name
  end

  def default_pic
    if self.image == ""
      self.image = "https://svgur.com/i/1vK.svg"
    end
  end
end
