class Iotproduct < ApplicationRecord
  has_many :casesiots
  has_one_attached :photo

  def rails_admin_title
      "#{self.product_name} #{self.id}"
  end
end
