class CreateTripUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :travelers do |t|
      t.references :trip, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
