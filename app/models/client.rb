class Client < ApplicationRecord
  before_validation { self.contact_email = contact_email.to_s.downcase }

  validates :company_name, presence: true, uniqueness: true
  validates :contact_email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :contact_no, presence: true, length: { maximum: 25 }
end
