class CreateMesures < ActiveRecord::Migration[6.1]
  def change
    create_table :mesures do |t|
      t.string :name

      t.timestamps
    end
  end
end
