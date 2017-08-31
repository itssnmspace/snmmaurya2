require 'rails_helper'

RSpec.describe User, type: :model do

  it 'Should valid with email, username and contact' do
    FactoryGirl.create(:user)
  end

  it 'Should not valid without email' do
    user = FactoryGirl.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'Should not valid without username' do
    user = FactoryGirl.build(:user, username: nil)
    user.valid?
    expect(user.errors[:username]).to include("can't be blank")
  end

  it 'Should not valid without contact' do
    user = FactoryGirl.build(:user, contact: nil)
    user.valid?
    expect(user.errors[:contact]).to include("can't be blank")
  end

  it 'Should not valid with duplicate email' do
    user = FactoryGirl.create(:user)
    nuser = FactoryGirl.build(:user, email: user.email)
    nuser.valid?
    expect(nuser.errors[:email]).to include("has already been taken")
  end

  it 'Should not valid with duplicate contact' do
    user = FactoryGirl.create(:user)
    nuser = FactoryGirl.build(:user, contact: user.contact)
    nuser.valid?
    expect(nuser.errors[:contact]).to include("has already been taken")
  end
  

  it 'Should not valid with duplicate username' do
    user = FactoryGirl.create(:user)
    nuser = FactoryGirl.build(:user, username: user.username)
    nuser.valid?
    expect(nuser.errors[:username]).to include("has already been taken")
  end  
end