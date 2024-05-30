class CurrencyHandout < ApplicationRecord
    has_many :receipts, dependent: :destroy
    has_many :residents, through: :receipts
end
