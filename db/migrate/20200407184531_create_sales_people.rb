class CreateSalesPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :sales_people do |t|
      t.string :name
      t.string :significant_other
      t.string :catch_phrase

      t.timestamps
    end
  end
end
