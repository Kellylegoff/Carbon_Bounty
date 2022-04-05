class Customer < ApplicationRecord
  belongs_to :user
  has_many :usecases, dependant: :destroy
end
