class Trip < ApplicationRecord
  has_many :travelers
  has_many :users, through :travelers
  has_many :items

  validates :name, :location, presence: true
end
