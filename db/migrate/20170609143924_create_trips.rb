class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :lookup, null: false

      t.timestamps
    end
  end
end
