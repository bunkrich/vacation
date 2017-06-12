class Item < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :votes

  validates :category, presence: true
  validates :lookup, uniqueness: { scope: :trip_id }
end
