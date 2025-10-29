class User < ApplicationRecord
  has_secure_password

  belongs_to :client, optional: true

  enum :role, { superadmin: "superadmin", admin: "admin", client: "client" }, validate: true

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true

  def name
    email.split("@").first.titleize
  end
end
