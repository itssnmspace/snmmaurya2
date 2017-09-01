class UserEmail < ApplicationRecord
  belongs_to :user

  validates :email, :user_id, presence: true
end
