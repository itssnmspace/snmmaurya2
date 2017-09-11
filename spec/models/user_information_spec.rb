require 'rails_helper'

RSpec.describe UserInformation, type: :model do

  describe 'Associations' do
    it {is_expected.to belong_to(:user)}
  end

  describe 'Validations' do
    subject { FactoryGirl.build(:user_information) }

    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:pin_code)}
    it {should validate_presence_of(:country)}
    it {should validate_presence_of(:dob)}
    it {should validate_presence_of(:user_id)}
  end

  describe 'User Presence' do
    before do
      @user = FactoryGirl.create(:user)
      @user_information = FactoryGirl.create(:user_information, user: @user)
    end

    it 'Should valid' do
      expect(@user_information).to be_valid
    end
  end
end