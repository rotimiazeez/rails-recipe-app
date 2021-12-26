require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { FactoryBot.build :food }

  describe 'validations' do
    describe 'measurement_unit' do
      context 'when valid' do
        it { expect(subject).to be_valid }
      end

      context 'when not valid' do
        subject { described_class.new }
        it 'should be present' do
          expect(subject).to_not be_valid
        end
end
