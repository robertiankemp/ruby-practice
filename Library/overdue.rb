require 'time'


def books_overdue
  File.readlines('./checkouts.txt').each do |line|
    date_string = line.split("-")[2]
    date = Date.parse date_string
    time_since_borrowed = (Date.today - date).to_i
      if time_since_borrowed > 14
        puts line
        puts "overdue by #{time_since_borrowed} days"
      end
    end
end

books_overdue

