class CreateOdds < ActiveRecord::Migration[6.1]
  def change
    create_table :odds do |t|
      t.string :name

      t.timestamps
    end
  end
end
