class Speaker < ApplicationRecord
  has_many :talks, dependent: :destroy
  validates :name, presence: true
end
