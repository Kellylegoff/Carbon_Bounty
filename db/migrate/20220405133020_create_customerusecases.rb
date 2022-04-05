class CreateCustomerusecases < ActiveRecord::Migration[6.1]
  def change
    create_table :customerusecases do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :usecase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
