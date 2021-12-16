require 'rails_helper'

RSpec.describe Teacher do
  fixtures :Teachers
  subject(:John) { Teachers(:John) }
  let(:invalid_Teacher) { Teacher.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid name' do
      Teacher = Teacher.new(name: '')
      Teacher.valid?
      expect(Teacher.errors.full_messages).to include("Name can't be blank")
      expect(Teacher).not_to be_valid
    end
  end

  describe 'validity in fixtures' do
    it 'should be vaid' do
      expect(Teacher.all.to_a.all?(&:valid?)).to be_truthy
    end
  end
end 