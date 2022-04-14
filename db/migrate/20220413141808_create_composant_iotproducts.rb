class CreateComposantIotproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :composant_iotproducts do |t|
      t.references :fonction, null: false, foreign_key: true
      t.references :iotproduct, null: false, foreign_key: true

      t.timestamps
    end
  end
end
