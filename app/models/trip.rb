class Trip < ApplicationRecord
  has_many :travelers, dependent: :destroy
  has_many :users, through: :travelers
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, :location, :start_date, :end_date, :lookup, presence: true

  validate :end_date_after_start_date

  def end_date_after_start_date
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end

end
