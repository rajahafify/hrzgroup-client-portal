class Client < ApplicationRecord
  has_many :users, dependent: :nullify

  validates :company_name, presence: true
  validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :contact_no, presence: true
end
