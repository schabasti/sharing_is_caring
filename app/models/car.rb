class Car < ApplicationRecord
  has_many :rentings
  belongs_to :user

  has_one_attached :photo

  validates :brand, presence: true
  validates :model, presence: true
  validates :description, presence: true, length: { minimum: 30 }
  validates :seats, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 20 }
  validates :photo, presence: true
end
