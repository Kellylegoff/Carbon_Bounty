class Mesure < ApplicationRecord
  has_many :objetfonctions, dependent: :destroy
  has_many :fonctions, through: :objetfonctions, dependent: :destroy
end
