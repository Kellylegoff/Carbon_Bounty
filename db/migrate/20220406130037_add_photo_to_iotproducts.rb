class AddPhotoToIotproducts < ActiveRecord::Migration[6.1]
  def change
    add_column :iotproducts, :description, :text
  end
end
