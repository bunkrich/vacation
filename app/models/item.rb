class Item < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :votes

  validates :category,:title, presence: true
end
