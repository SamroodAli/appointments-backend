class Appointment < ApplicationRecord
  scope :upcoming, ->(user_id) { where('date > ?', Date.today).where(user_id: user_id) }
  scope :past, ->(user_id) { where('date < ?', Date.today).where(user_id: user_id) }
  scope :todays_appointments, ->(user_id) { where('date = ?', Date.today).where(user_id: user_id) }

  belongs_to :teacher
  belongs_to :user
  validates :date, presence: true, date: { after_or_equal_to: Date.today }
  validates :time, presence: true

  def reserved?
    !!Appointment.find_by({ teacher_id: teacher_id, date: date, time: time, user_id: user_id })
  end
end
