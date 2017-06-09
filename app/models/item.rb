class Item < ApplicationRecord
  belgons_to :suggestion
  belongs_to :user through :suggestion
  belongs_to :trip
  has_many :votes
  has_many :comments, as: :commentable

  validates :type, presence: true
  validates :lookup, uniqueness: { scope: :trip_id }
end
