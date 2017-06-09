class CreateTripUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_users do |t|
      t.references :trip, foreign_key: true, null: false
      t.referenes :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
