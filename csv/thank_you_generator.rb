require 'csv' 

class ThankYouGenerator 
  attr_accessor :csv_file

  def initialize(csv_file)
    @csv_file = csv_file
    # read the csv
    # parse the csv
    # make files based on each row of the csv
  end

  def write_thank_you_message
  customers = CSV.read(@csv_file)
  how_many = customers.length - 1
  #loop starts from 1 - don't need first row as it is titles of rows.
  #have to finish loop at customer.length - 1 
  #as array is empty after this
  (1..how_many).each { |n|
  thank_you_msg = <<-PARAGRAPH
  to: #{customers[n][1]} 
  Dear #{customers[n][2]},
  Thank you for your order of #{customers[n][3]}. We hope you
  will buy from us again soon!
  Regards #{customers[n][5]}
  PARAGRAPH
  aFile = File.new("#{customers[n][0]}.txt", "w")
  aFile.write(thank_you_msg)
  aFile.close
  }
  end

end

example = ThankYouGenerator.new('./orders.csv')
example.write_thank_you_message