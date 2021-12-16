class Teacher < ApplicationRecord
  include ActiveModel::Serializers::JSON

  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  validates :name, presence: true

  def attributes
    {
      id: nil,
      name: nil
    }
  end
end
