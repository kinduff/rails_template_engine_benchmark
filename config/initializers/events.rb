require 'csv'
file = "my_file.csv"
ActiveSupport::Notifications.subscribe /^render_.+.action_view$/ do |event|
  CSV.open(file, 'a') do |row|
    view_engine = event.payload[:identifier].split('.').last
    row << [view_engine, event.payload[:identifier], event.time, event.end, event.duration]
  end
end
