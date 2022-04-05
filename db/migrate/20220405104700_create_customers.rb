class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :address
      t.string :phone
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :role
      t.string :company_type
      t.string :sector
      t.string :siret
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
