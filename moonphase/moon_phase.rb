require 'rubygems'
require 'nokogiri'
require 'open-uri'


class Moon

  def input_year
    puts "I will tell you the first full moon of a year. Which year would you like to know?"
    @year = gets.chomp.to_i
  end

  def get_first_moon
    input_year
    @doc = Nokogiri::HTML(open("http://www.timeanddate.com/calendar/moonphases.html?year=#{@year}&n=0"))
    date =@doc.at_css(get_correct_css_selector).content
    puts date
    # puts @doc.at_css("tbody >:nth-child(1) >:nth-child(6)").content
    # puts "the first full moon is #{full_moon}"
  end

  def get_correct_css_selector
    case @doc.at_css("tbody >:nth-child(1) >:nth-child(6)").content
    when true
      "tbody >:nth-child(1) >:nth-child(6)"
    else
      "tbody >:nth-child(2) >:nth-child(6)"
    end
  end

  # if doc.at_css("tbody >:nth-child(1) >:nth-child(6)").content == (" ")
  #     full_moon = doc.at_css("tbody >:nth-child(2) >:nth-child(6)").content
  #     else
  #       doc.at_css("tbody >:nth-child(1) >:nth-child(6)").content
  #     end

end

example = Moon.new

example.get_first_moon


