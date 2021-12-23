class Appointment < ApplicationRecord
  scope :upcoming, ->(user_id) { where('date > ?', Date.today).where(user_id: user_id) }
  scope :past, ->(user_id) { where('date < ?', Date.today).where(user_id: user_id) }
  scope :todays_appointments, ->(user_id) { where('date = ?', Date.today).where(user_id: user_id) }

  belongs_to :teacher
  belongs_to :user
  # validates date to be true and not in the past
  validates :date, presence: true, date: { after_or_equal_to: Date.today }
  validates :time, presence: true


  # method that returns upcoming,past and today's appointments
  def self.all_for(user_id)
    upcoming = upcoming(user_id)
    past = past(user_id)
    today = todays_appointments(user_id)
    {
      Today: today,
      Upcoming: upcoming,
      Past: past
    }
  end

  def as_json(options = {})
    super(options.merge(include: :teacher))
  end

end