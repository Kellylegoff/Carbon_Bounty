class Iotproduct < ApplicationRecord
  has_many :casesiots, dependent: :destroy
  has_many :usecases, through: :casesiots, dependent: :destroy
  has_many :fonction_composant_iotproducts, dependent: :destroy
  has_many :fonctions, through: :fonction_composant_iotproducts, dependent: :destroy
  has_many :composants, through: :fonction_composant_iotproducts, dependent: :destroy

  has_one_attached :photo

  # fonction pour lire le product name lors de la céation de la relation avec le usecase dans l'admin
  def rails_admin_title
      "#{self.product_name} #{self.id}"
  end
end
