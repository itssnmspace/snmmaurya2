require 'rails_helper'

RSpec.describe UserType, type: :model do

  describe 'Validations' do
    it 'Should validate presence of name' do
      should validate_presence_of(:name)
    end

    it 'Should validate uniqueness of name' do
      should validate_uniqueness_of(:name)
    end
  end
end
