json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :time_of_day, :status
  json.start schedule.start_time
  json.end schedule.end_time
  json.url schedule_url(schedule, format: :html)
end
