require 'rails_helper'

RSpec.describe UserEmail, type: :model do

  describe 'Associations' do
    it {is_expected.to belong_to(:user)}
  end

  describe 'Validations' do
    subject { FactoryGirl.build(:user_email) }

    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:user_id)}
  end

  describe 'User Presence' do
    before do
      @user = FactoryGirl.create(:user)
      @user_email = FactoryGirl.create(:user_email, user: @user)
    end
    it 'Should valid' do
      expect(@user_email).to be_valid
    end
  end
end