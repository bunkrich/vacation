class Trip < ApplicationRecord
  has_many :travelers
  has_many :users, through: :travelers
  has_many :items, dependent: :destroy
  has_many :comments, as: :commentable

  validates :name, :location, presence: true
end
