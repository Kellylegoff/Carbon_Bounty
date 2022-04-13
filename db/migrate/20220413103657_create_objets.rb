class CreateObjets < ActiveRecord::Migration[6.1]
  def change
    create_table :objets do |t|
      t.string :name

      t.timestamps
    end
  end
end
