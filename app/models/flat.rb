class Flat < ApplicationRecord
  # has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, numericality: true, presence: true
  validates :number_of_guests, numericality: true, presence: true
  validates :picture_url, presence: true
end
