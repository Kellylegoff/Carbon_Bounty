class Composant < ApplicationRecord
  has_many :fonction_composant_iotproducts, dependent: :destroy
  has_many :fonctions, through: :fonction_composant_iotproducts, dependent: :destroy
  has_many :iotproducts, through: :fonction_composant_iotproducts, dependent: :destroy
end
