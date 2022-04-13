class AddFonctionToObjetfonctions < ActiveRecord::Migration[6.1]
  def change
    add_reference :objetfonctions, :fonctions, foreign_key: true
  end
end
