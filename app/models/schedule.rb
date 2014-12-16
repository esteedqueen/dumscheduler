class Schedule < ActiveRecord::Base
  # extend SimpleCalendar
  # has_calendar attribute: :starts_attend
  
  validates_inclusion_of :time_of_day, in: Choices['time_of_day']

  belongs_to :location

  # belongs_to :user

  # accepts_nested_attributes_for :location

  has_many :feedbacks



end

