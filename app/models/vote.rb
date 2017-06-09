class Vote < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :up_down, :user_id, :item_id, presence: true
end
