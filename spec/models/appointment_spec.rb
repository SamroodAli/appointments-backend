# test appointments rb with rspec


require 'rails_helper'

RSpec.describe Appointment do
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
  # test validation of date to be present and to be after or equal to today
  # test validation of teacher to be present
  # test validation of user to be present

end
