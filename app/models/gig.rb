class Gig < ApplicationRecord
    validates :name, :date, presence: :true
end
