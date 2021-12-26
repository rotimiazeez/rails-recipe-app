require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.build :user }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe 'validations' do
    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
end
