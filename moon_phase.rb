require 'nokogiri'
require 'open-uri'




puts "please enter a year"
year = gets.chomp.to_i

doc = Nokogiri::HTML(open('http://www.timeanddate.com/calendar/moonphases.html?year=#{year}&n=0'))
