class RemoveForeignkeyToUsecases < ActiveRecord::Migration[6.1]
  def change
    remove_reference :usecases, :customer
  end
end
