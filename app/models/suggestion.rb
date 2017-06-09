class Suggestion < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :item, :user, presence: true
end
