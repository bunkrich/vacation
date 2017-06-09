class CreateItemUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.references :item, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
