class CreateSpecUsecases < ActiveRecord::Migration[6.1]
  def change
    create_table :spec_usecases do |t|
      t.references :odd, null: false, foreign_key: true
      t.references :fonction, null: false, foreign_key: true
      t.references :usecase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
