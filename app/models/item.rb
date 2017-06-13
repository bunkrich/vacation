class Item < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :votes, dependent: :destroy

  validates :category,:title, presence: true
end
