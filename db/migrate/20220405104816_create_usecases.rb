class CreateUsecases < ActiveRecord::Migration[6.1]
  def change
    create_table :usecases do |t|
      t.string :name
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
