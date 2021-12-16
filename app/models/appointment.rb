class Appointment < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :teacher
  belongs_to :user
  # validates date to be true and not in the past
  validates :date, presence: true, date: { after_or_equal_to: Date.today }
  validates :time, presence: true, time: { after_or_equal_to: Time.now }

  def attributes
    {
      id: id,
      date:date,
      time:time,
      teacher:teacher,
    }
  end
end
