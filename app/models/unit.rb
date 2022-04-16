class Unit < ApplicationRecord
    belongs_to :company
    validates :name, presence: true, length: { minimum: 2 }
end
