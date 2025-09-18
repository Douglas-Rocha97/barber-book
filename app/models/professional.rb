class Professional < ApplicationRecord
  has_many :appointments
  has_many :services
  has_many :users, through: :appointments
  has_one_attached :photo

  validates :name, :photo, :start_at, :finish_at, :role, presence: true
end
