class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :sales_person
    accepts_nested_attributes_for :customer
    validates :customer_id, presence: true
    validates :number_of_reams, presence: true, numericality: {only_integer: true}
    validates :price_per_ream, presence: true, numericality: {only_integer: true}
    def customer_attributes=(customer_attributes)
        customer = Customer.find_or_create_by(name: customer_attributes[:name] )
        self.customer = customer
    end

end
