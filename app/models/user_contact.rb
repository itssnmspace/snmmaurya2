class UserContact < ApplicationRecord
  belongs_to :user

  validates :contact, :user_id, presence: true
  validates :contact, length: {is: 10}
end