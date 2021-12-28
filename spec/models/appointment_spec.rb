# test appointments rb with rspec
require 'rails_helper'

RSpec.describe Appointment do
  # all fixtures
  fixtures :all
  subject(:AppointmentOne) { Appointments(:AppointmentOne) }
  let(:invalid_Appointment) { Appointment.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end
  # test validation of time to be present and to be after or equal to now
  describe 'validation of time' do
    it 'should be present' do
      appointment = Appointment.new(time: nil)
      appointment.valid?
      expect(appointment.errors.full_messages).to include("Time can't be blank")
    end
  end

  describe 'validation of date' do
    it 'should be present' do
      appointment = Appointment.new(date: nil)
      appointment.valid?
      expect(appointment.errors.full_messages).to include("Date can't be blank")
    end
  end

  describe 'association between teacher and appointment' do
    it 'should be present' do
      expect(subject.teacher).to eq(Teachers(:TeacherOne))
    end
  end

  describe 'association between user and appointment' do
    it 'should be present' do
      expect(subject.user).to eq(Users(:Samrood))
    end
  end
  # test validation of date to be present and to be after or equal to today
  # test validation of teacher to be present
  # test validation of user to be present
end
