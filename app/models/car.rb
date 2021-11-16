class Car < ApplicationRecord
  has_many :rentings
  belongs_to :user
end
