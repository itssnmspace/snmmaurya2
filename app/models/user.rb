class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_type
  has_many :user_informations
  has_many :user_contacts
  has_many :user_emails

  validates :email, :username, :contact, presence: true
  validates :email, :username, :contact, uniqueness: true
  validates :contact, length: {is: 10}

end