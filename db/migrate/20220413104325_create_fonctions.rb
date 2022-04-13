class CreateFonctions < ActiveRecord::Migration[6.1]
  def change
    create_table :fonctions do |t|
      t.string :name

      t.timestamps
    end
  end
end
