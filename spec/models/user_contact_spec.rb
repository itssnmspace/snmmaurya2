require 'rails_helper'

RSpec.describe UserContact, type: :model do

  describe 'Associations' do
    it {is_expected.to belong_to(:user)}
  end

  describe 'Validations' do
    subject { FactoryGirl.build(:user_contact) }
    it {should validate_presence_of(:contact)}
    it {should validate_presence_of(:user_id)}
    it {should validate_length_of(:contact).is_equal_to(10)}
  end

  describe 'User Presence' do
    before do
      @user = FactoryGirl.create(:user)
      @user_contact = FactoryGirl.create(:user_contact, user: @user)
    end

    it 'Should valid' do
      expect(@user_contact).to be_valid
    end
  end
end