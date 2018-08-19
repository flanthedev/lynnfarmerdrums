class Gig < ApplicationRecord
  validates :name, :date, presence: :true

  scope :future, -> { where("date > ?", self.yesterday) }

  def date_time
    DateTime.strptime(date, '%m/%d/%Y %l:%M %p')
  end

  def formatted_date
    date_time.strftime('%B %e, %Y')
  end

  private
  
    def self.yesterday
      (DateTime.now - 1.day).strftime('%m/%d/%Y %l:%M %p')
    end
end
