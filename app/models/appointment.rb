class Appointment < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :teacher,dependent: :destroy
  belongs_to :user,dependent: :destroy

  def attributes
    {
      id: id,
      date:date,
      time:time,
      teacher:teacher,
    }
  end
end
