class SalesPerson < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders
    validates :name, presence: true
    validates :catch_phrase, presence: true

    
    def order_count
        self.orders.count
    end
end
