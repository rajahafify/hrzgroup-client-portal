class User < ApplicationRecord
  has_secure_password

  belongs_to :client, optional: true

  enum role: { superadmin: 0, admin: 1, client: 2 }

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
end
