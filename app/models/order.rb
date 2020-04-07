class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :sales_person
end
