class CreateFlies < ActiveRecord::Migration[5.2]
  def change
    create_table :flies do |t|
      t.text :name
      t.integer :size
      t.text :color
      t.text :type
      t.integer :amount
      t.boolean :favorited?, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
