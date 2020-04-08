class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :sales_person
    accepts_nested_attributes_for :customer
    # validates :customer_id :price_per_ream :number_of_reams :paper_type, presence: true 
    # curious to see if above line can work
    # t.integer "sales_person_id"
    # t.integer "price_per_ream"
    # t.integer "number_of_reams"
    # t.string "paper_type"
    
    def customer_attributes=(customer_attributes)
        customer = Customer.find_or_create_by(name: customer_attributes[:name] )
        self.customer = customer
    end

end
