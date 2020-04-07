class SalesPerson < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders

    def order_count
        self.orders.count
    end
end
