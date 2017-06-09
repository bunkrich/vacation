class Comment < ApplicationRecord
  belongs_to :commentable
  belongs_to :user
end
