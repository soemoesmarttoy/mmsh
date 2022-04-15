class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :unit_price
      t.float :quantity
      #t.references :unit, null: false, foreign_key: true
      #t.references :warehouse, null: false, foreign_key: true
      #t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
