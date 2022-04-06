class Usecase < ApplicationRecord
  has_many :customerusecases
  has_many :casesiots
  has_many :iotproducts, through: :casesiots
  has_one_attached :photo
end
