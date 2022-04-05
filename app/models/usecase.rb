class Usecase < ApplicationRecord
  has_many :customerusecases
  has_many :iotproducts, through: :casesiots
end
