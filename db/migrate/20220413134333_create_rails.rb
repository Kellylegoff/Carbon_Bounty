class CreateRails < ActiveRecord::Migration[6.1]
  def change
    create_table :rails do |t|
      t.string :model
      t.string :SpecUsecase
      t.references :odd, null: false, foreign_key: true
      t.references :fonction, null: false, foreign_key: true
      t.references :usecase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
