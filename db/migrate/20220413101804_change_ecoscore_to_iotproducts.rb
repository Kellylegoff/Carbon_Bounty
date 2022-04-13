class ChangeEcoscoreToIotproducts < ActiveRecord::Migration[6.1]
  def change
    change_column :iotproducts, :eco_score, :integer, default: 0
  end
end
