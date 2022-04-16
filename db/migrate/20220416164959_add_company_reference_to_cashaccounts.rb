class AddCompanyReferenceToCashaccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :cashaccounts, :company, null: false, foreign_key: true
  end
end
