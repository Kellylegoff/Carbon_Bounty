class CreateFonctionComposantIotproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :fonction_composant_iotproducts do |t|
      t.references :fonction, null: false, foreign_key: true
      t.references :iotproduct, null: false, foreign_key: true
      t.references :composant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
