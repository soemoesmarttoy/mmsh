class AddCompanyReferenceToUnits < ActiveRecord::Migration[7.0]
  def change
    add_reference :units, :company, null: false, foreign_key: true
  end
end
