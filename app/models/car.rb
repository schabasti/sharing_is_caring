class Car < ApplicationRecord
  has_many :rentings
  belongs_to :user

  has_one_attached :photo
end
