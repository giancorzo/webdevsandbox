class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :description
      t.float :total_cost

      t.timestamps null: false
    end
  end
end
