class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :professionals, through: :appointments
  has_one_attached :photo

  validates :name, :gender, presence: true
  GENDERS = ["male", "female"]
  validates :gender, inclusion: { in: GENDERS }
  enum role: { user: 0, staff: 1, owner: 2 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
