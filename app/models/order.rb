class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :sales_person
    accepts_nested_attributes_for :customer

end
