class CreateTripUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_users do |t|
      t.references :trip, foreign_key: true
      t.referenes :user

      t.timestamps
    end
  end
end
