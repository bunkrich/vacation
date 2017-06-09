class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :body
      t.datetime :date
      t.string :lookup
      t.string :type
      t.references :user, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
