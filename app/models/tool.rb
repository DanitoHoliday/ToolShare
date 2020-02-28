class Tool < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search,
    against: [:name]

  before_create :add_default_photo


private

def add_default_photo
  unless photo.attached?
    self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "hands.png")), filename: 'default.jpg' , content_type: "image/jpeg")
  end
end
end
