class Product < ApplicationRecord
  has_many :unit
  has_many :warehouse
  has_many :category
  belongs_to :company

  validates :name, presence: true, length: { minimum: 3 } 
  validates :unit_price, presence: true
  validates :quantity, presence: true
  validates :unit_id, presence: true
  validates :warehouse_id, presence: true
  validates :category_id, presence: true
  
end
