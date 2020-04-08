class SalesPerson < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders
    validates :name, presence: true
    validates :catch_phrase, presence: true

    
    def order_count
        self.orders.count
    end
    def sales_rev 
        total = 0 
        self.orders.each do |o|
           total +=  (o.number_of_reams * o.price_per_ream)
        end
        total
    end

    def self.leaderboard
        hash = Hash.new(0)
        self.all.each do |sales_person|
            hash["#{sales_person.name}"] = sales_person.sales_rev
        end
        hash = hash.sort_by {|k, v| -v}
        return hash 
        end

end
