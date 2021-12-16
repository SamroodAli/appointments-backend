require 'rails_helper'

RSpec.describe User do
  fixtures :all
  subject(:Samrood) { Users(:Samrood) }
  let(:invalid_User) { User.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end

  describe :invalid_Username do
    it 'should have valid Username' do
      user = User.new(username: '')
      expect(user).not_to be_valid
      expect(user.errors.full_messages).to include("Username can't be blank")
      expect(user).not_to be_valid
    end
  end

  describe 'association between User and appointments' do
    it 'should be present' do
      expect(subject.appointments).to eq([Appointments(:AppointmentOne), Appointments(:AppointmentTwo)])
    end
  end
end
