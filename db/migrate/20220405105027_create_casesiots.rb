class CreateCasesiots < ActiveRecord::Migration[6.1]
  def change
    create_table :casesiots do |t|
      t.references :usecase, null: false, foreign_key: true
      t.references :iotproduct, null: false, foreign_key: true

      t.timestamps
    end
  end
end
