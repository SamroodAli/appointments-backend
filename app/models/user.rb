class User < ApplicationRecord
  include ActiveModel::Serializers::JSON

  has_many :appointments
  has_many :users, through: :appointments

  has_secure_password
  validates :username, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  has_many :appointments
  has_many :teachers, through: :appointments

  def attributes
    {
      id:nil,
      username:nil,
      email:nil
    }
  end

end
