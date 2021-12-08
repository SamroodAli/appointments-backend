class Appointment < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :teacher
  belongs_to :user

  def attributes
    {
      id: id,
      date:date,
      time:time,
      teacher:teacher,
    }
  end
end
