class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :professional
  has_one_attached :goal_image

  validates :date, :start_time, :finish_time, presence: true
end
