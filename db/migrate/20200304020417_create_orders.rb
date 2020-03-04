class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :date_of_order #not saving anything to the database.
      t.integer :user_id

      t.timestamps
    end #could create an order and see what items are tied to that.
  end
end
