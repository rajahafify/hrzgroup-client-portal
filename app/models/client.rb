class Client < ApplicationRecord
  has_many :users, dependent: :nullify

  validates :company_name, :contact_no, :contact_email, presence: true
  validates :contact_email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
