class Usecase < ApplicationRecord
  belongs_to :customer
  has_many :iotproducts, through: :casesiots
end
