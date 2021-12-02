class Teacher < ApplicationRecord
  include ActiveModel::Serializers::JSON

  has_many :appointments
  has_many :users, through: :appointments

  def attributes
    {
      id:nil,
      name: nil
    }
  end
end
