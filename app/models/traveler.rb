class Traveler < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  validates :trip, :user, presence: true
end
