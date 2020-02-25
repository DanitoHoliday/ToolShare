class Tool < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search,
    against: [:name]
end
