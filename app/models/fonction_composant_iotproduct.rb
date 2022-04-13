class FonctionComposantIotproduct < ApplicationRecord
  belongs_to :fonction
  belongs_to :iotproduct
  belongs_to :composant
end
