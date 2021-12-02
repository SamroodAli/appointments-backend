class AppointmentSerializer < ActiveModel::Serializer
  attributes :data,:time
  belongs_to :teacher
end
