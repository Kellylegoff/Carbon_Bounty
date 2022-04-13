class CreateComposants < ActiveRecord::Migration[6.1]
  def change
    create_table :composants do |t|
      t.string :name

      t.timestamps
    end
  end
end
