class Fonction < ApplicationRecord
  VERB = ["Activer", "Alerter", "Alimenter", "Analyser", "Approuver", "Arrêter", "Aspirer", "Assainir", "Assembler", "Brûler", "Calculer", "Chauffer", "Compresser", "Compter", "Couper", "Creuser", "Déclencher", "Déplacer", "Déplacer (se)", "Désinstaller", "Détecter", "Détruire", "Dialoguer", "Distribuer", "Eclairer", "Ecouter", "Emballer", "Emettre", "Enregistrer", "Entretenir", "Extraire", "Fabriquer", "Fertiliser", "Habiller", "Identifier", "Incinérer", "Inspecter", "Installer", "Inventorier", "Irriguer", "Lancer", "Localiser", "Mesurer", "Mettre à jour", "Nettoyer", "Paramétrer", "Planifier", "Pomper", "Poser", "Prendre", "Réceptionner", "Relever", "Réparer", "Souffler", "Soulever", "Transporter", "Vaporiser"]
  has_many :objetfonctions, dependent: :destroy
  has_many :mesures, through: :objetfonctions, dependent: :destroy
  has_many :objets, through: :objetfonctions, dependent: :destroy
  has_many :spec_usecases, dependent: :destroy
  has_many :usecases, through: :spec_usecases, dependent: :destroy
  has_many :fonction_composant_iotproducts, dependent: :destroy
  has_many :composants, through: :fonction_composant_iotproducts, dependent: :destroy
  has_many :iotproducts, through: :fonction_composant_iotproducts, dependent: :destroy
  validates :name, inclusion: { in: VERB }
end
