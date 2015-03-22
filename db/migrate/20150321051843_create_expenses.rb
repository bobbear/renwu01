class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :business_trip_info_id
      t.string :goods_name
      t.integer :quantity
      t.decimal :unit_price

      t.timestamps null: false
    end
  end
end
