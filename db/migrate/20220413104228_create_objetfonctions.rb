class CreateObjetfonctions < ActiveRecord::Migration[6.1]
  def change
    create_table :objetfonctions do |t|
      t.references :mesure, null: false, foreign_key: true
      t.references :objet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
