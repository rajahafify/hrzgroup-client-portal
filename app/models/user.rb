class User < ApplicationRecord
  has_secure_password

  enum role: { superadmin: 0, admin: 1, client: 2 }

  before_validation { self.email = email.to_s.downcase }

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true
  validates :role, presence: true
end
