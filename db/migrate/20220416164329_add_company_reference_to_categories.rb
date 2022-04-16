class AddCompanyReferenceToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :company, null: true, foreign_key: true
  end
end
