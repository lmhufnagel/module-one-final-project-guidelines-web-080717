require 'smarter_csv'
require 'pry'
class DataImporter

  def self.import_csv

    filename = "/Users/flatironschool/Projects/module-one-final-project-guidelines-web-080717/data/Indiegogo.csv"
    recordsA = SmarterCSV.process(filename)
    recordsA.each do |project|
      Project.create(title: project[:title], category: project[:category_name], days_to_production: project[:amt_time_left])
    end
  end


end
