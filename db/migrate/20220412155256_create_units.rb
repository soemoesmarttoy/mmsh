class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :conversion_formula
      t.boolean :is_based
      t.string :based_unit

      t.timestamps
    end
  end
end
