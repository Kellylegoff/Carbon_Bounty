class Usecase < ApplicationRecord
  has_many :customerusecases, dependent: :destroy
  has_many :casesiots, dependent: :destroy
  has_many :iotproducts, through: :casesiots, dependent: :destroy
  has_many :spec_usecases, dependent: :destroy
  has_many :odds, through: :spec_usecases, dependent: :destroy
  has_many :fonctions, through: :spec_usecases, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_use_cases,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
end
