class Talk < ApplicationRecord
    belongs_to :speaker
    has_many :registrations, dependent: :destroy
    has_many :participants, through: :registrations
    validates :title, presence: true
end
