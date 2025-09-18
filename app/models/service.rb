class Service < ApplicationRecord
  belongs_to :professional
  validates :name, :price, :duration, presence: true
end
