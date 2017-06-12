class Trip < ApplicationRecord
  has_many :travelers
  has_many :users, through: :travelers
  has_many :items
  has_many :comments

  validates :name, :location, presence: true
end
