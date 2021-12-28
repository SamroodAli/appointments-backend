class Teacher < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  validates :name, presence: true
end
