class Car < ApplicationRecord
  include Notifications
  has_many :subscribers, dependent: :destroy
  has_one_attached :featured_image

  validates :model, presence: true
  validates :price, presence: true
  validates :make, presence: true
  validates :year, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
  validates :featured_image, presence: true
end
