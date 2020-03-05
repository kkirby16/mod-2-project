class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :name
      t.string :description
      t.string :comment

      t.timestamps
    end
  end
end
