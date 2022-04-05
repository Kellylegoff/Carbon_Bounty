class CreateIotproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :iotproducts do |t|
      t.string :product_name
      t.string :product_type
      t.string :constructor
      t.integer :eco_score

      t.timestamps
    end
  end
end
