class CreateFlies < ActiveRecord::Migration[5.2]
  def change
    create_table :flies do |t|
      t.text :name
      t.integer :size
      t.text :color
      t.text :category
      t.integer :amount
      t.boolean :favorited?, default: false

      t.timestamps
    end
  end
end
