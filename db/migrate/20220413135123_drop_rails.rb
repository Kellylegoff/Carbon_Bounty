class DropRails < ActiveRecord::Migration[6.1]
  def change
    drop_table :rails
  end
end
