class Car < ApplicationRecord
  has_many :rentings, dependent: :destroy
  belongs_to :user

  has_one_attached :photo
end
