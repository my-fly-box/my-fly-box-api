class CreateCatches < ActiveRecord::Migration[5.2]
  def change
    create_table :catches do |t|
      t.string :species
      t.string :image, default: 'N/A'
      t.integer :length
      t.integer :weight
      t.string :location

      t.references :fly, foreign_key: true
      t.timestamps
    end
  end
end
