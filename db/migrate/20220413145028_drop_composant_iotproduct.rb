class DropComposantIotproduct < ActiveRecord::Migration[6.1]
  def change
    drop_table :composant_iotproducts
  end
end
