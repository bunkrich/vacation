class CreateTravelers < ActiveRecord::Migration[5.1]
  def change
    create_table :travelers do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
