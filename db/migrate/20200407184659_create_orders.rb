class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :sales_person_id
      t.integer :price_per_ream
      t.integer :number_of_reams
      t.string :paper_type

      t.timestamps
    end
  end
end
