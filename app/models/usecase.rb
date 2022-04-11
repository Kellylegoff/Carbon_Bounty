class Usecase < ApplicationRecord
  has_many :customerusecases
  has_many :casesiots
  has_many :iotproducts, through: :casesiots
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_use_cases,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
end
