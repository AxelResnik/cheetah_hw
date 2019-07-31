class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.string :barcode
      t.string :price
      t.string :sku
      t.references :producer, foreign_key: true

      t.timestamps
    end
  end
end
