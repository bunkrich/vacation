class Item < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :votes, dependent: :destroy
  has_many :comments, as: :commentable

  validates :category,:title, presence: true
end
