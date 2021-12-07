class AppointmentSerializer < ActiveModel::Serializers
  attributes :data,:time
  belongs_to :teacher
end
