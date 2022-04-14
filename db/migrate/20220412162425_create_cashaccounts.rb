class CreateCashaccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :cashaccounts do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
