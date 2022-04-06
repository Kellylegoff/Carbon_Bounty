class Iotproduct < ApplicationRecord
  has_many :casesiots
  has_one_attached :photo
end
