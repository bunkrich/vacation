class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :body
      t.datetime :date
      t.string :lookup
      t.string :type, null: false
      t.references :user, foreign_key: true, null: false
      t.references :trip, foreign_key: true, null: false

      t.timestamps
    end
  end
end
