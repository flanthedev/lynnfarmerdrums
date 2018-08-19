class Page < ApplicationRecord
  validates :title, :body, presence: true
  enum status: {
    inactive: 0,
    active: 1      
  }
  scope :active, -> { where(status: "active") }
end
