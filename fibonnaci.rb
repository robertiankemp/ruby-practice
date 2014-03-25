def fibonnaci_sequence(number)
  @fibbo = [1, 1]
  (1..number).each { |n|
    break if @fibbo.length == number
  @fibbo << @fibbo[n-1] + @fibbo[n]
  }
  puts @fibbo
end

fibonnaci_sequence(500)