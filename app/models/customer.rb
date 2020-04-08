class Customer < ApplicationRecord
    has_many :orders
    has_many :sales_people, through: :orders
    validates :name, presence: true


end
