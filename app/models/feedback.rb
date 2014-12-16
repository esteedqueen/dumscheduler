class Feedback < ActiveRecord::Base
  has_one :schedule
  belongs_to :user
end
