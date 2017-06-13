class Trip < ApplicationRecord
  has_many :travelers, dependent: :destroy
  has_many :users, through: :travelers
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, :location, presence: true
end
