class Customer < ApplicationRecord
  belongs_to :user
  has_many :usecases, through: :customerusecases
end
