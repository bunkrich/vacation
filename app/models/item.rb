class Item < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :votes, dependent: :destroy

  validates :category,:title, presence: true

  before_save :placeholder_pic

  def placeholder_pic
  	if self.image == ""
  		self.image = "http://svgur.com/i/1x4.svg"
  	end
  end

end
