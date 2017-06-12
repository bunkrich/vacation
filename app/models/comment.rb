class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  validates :body, :user_id, :trip_id, presence: true
end
