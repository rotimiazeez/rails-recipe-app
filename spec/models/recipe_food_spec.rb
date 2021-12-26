require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject { FactoryBot.build :recipe_food }

  describe 'validations' do
    describe 'quantity' do
      context 'when valid' do
        it { expect(subject).to be_valid }
      end

      context 'when not valid' do
        subject { described_class.new }
        it 'should be present' do
          expect(subject).to_not be_valid
        end
end
