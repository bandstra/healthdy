# http://erikonrails.snowedin.net/?p=212
# rake csv_model_import[import/students.csv,Student]
# lib/tasks/import.rake
desc "Imports a CSV file into an ActiveRecord table"
task :csv_model_import, :filename, :model, :needs => :environment do |task,args|
  lines = File.new(args[:filename]).readlines
  header = lines.shift.strip
  keys = header.split(',')
  lines.each do |line|
    params = {}
    values = line.strip.split(',')
    keys.each_with_index do |key,i|
      params[key] = values[i]
    end
    Module.const_get(args[:model]).create(params)
  end
end