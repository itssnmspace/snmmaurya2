require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Associations' do
    it {is_expected.to belong_to(:user_type)}
    it {is_expected.to have_many(:user_informations)}
    it {is_expected.to have_many(:user_emails)}
    it {is_expected.to have_many(:user_contacts)}
  end

  describe 'Validations' do
    subject { FactoryGirl.build(:user) }

    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:contact)}
    it {should validate_presence_of(:username)}

    # it {should validate_uniqueness_of(:email)}
    # it {should validate_uniqueness_of(:contact)}
    # it {should validate_uniqueness_of(:username)}
  end

  describe 'User Type' do
    before do
      @user_type = FactoryGirl.create(:user_type)
      @user = FactoryGirl.create(:user, user_type: @user_type)
    end
    it 'Should valid' do
      expect(@user).to be_valid
    end
  end
end