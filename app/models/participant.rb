class Participant < ApplicationRecord
  has_many :registrations, dependent: :destroy
  has_many :talks, through: :registrations
  validates :name, :email, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
