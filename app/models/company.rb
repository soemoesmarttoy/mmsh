class Company < ApplicationRecord
    has_many :users
    has_many :cashaccounts
    has_many :categories
    has_many :units
    has_many :warehouses
    has_many :products
    has_many :customers
    
end
