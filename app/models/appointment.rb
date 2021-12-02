class Appointment < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :teacher
  belongs_to :user

  def attributes
    {
      'date' => date,
      'time' => time,
      'teacher' => {
        'name' => teacher.name
      },
    }
  end
end
