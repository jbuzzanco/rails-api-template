class Quote < ActiveRecord::Base
  belongs_to :user
  validates :quoteText, :user, presence: true
end
