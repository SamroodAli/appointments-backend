require 'rails_helper'

RSpec.describe Teacher do
  fixtures :all
  subject(:TeacherOne) { Teachers(:TeacherOne) }
  let(:invalid_Teacher) { Teacher.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid name' do
      teacher = Teacher.new(name: '')
      expect(teacher).not_to be_valid
      expect(teacher.errors.full_messages).to include("Name can't be blank")
      expect(teacher).not_to be_valid
    end
  end

  describe 'association between teacher and appointments' do
    it 'should be present' do
      expect(subject.appointments).to eq([Appointments(:AppointmentOne), Appointments(:AppointmentTwo)])
    end
  end
end
