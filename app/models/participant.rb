class Participant < ApplicationRecord
  before_validation :downcase_email

  has_many :registrations, dependent: :destroy
  has_many :talks, through: :registrations
  validates :name, :email, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  def downcase_email
    email.downcase! if email
  end
end
