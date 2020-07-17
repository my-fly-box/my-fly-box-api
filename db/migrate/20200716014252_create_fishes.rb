class CreateFishes < ActiveRecord::Migration[5.2]
  def change
    create_table :fishes do |t|
      t.text :species
      t.text :image
      t.integer :length
      t.integer :weight
      t.integer :amound
      t.text :location
      t.references :fly, foreign_key: true

      t.timestamps
    end
  end
end
