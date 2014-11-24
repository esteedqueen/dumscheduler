namespace :csv do

  desc "Import CSV Data"
  task :data => :environment do

    require 'csv'

    csv_file_path = 'lib/tasks/data.csv'

    CSV.foreach(csv_file_path, headers: true) do |row|
      
      schedule = Schedule.new({
        :start_time => row[0],
        :time_of_day => row[1],
        :end_time => row[3]
        })

      if (row[2] == "FALSE")
        schedule.status = false
      else
        schedule.status = true
      end
      schedule.save
      puts "Success!"
    end
  end  
end