def sum_of_squares
array = []
(1..3).each { |n|
  array << n**2
}

puts array
sum_of_squares_total = array.inject(:+)
puts sum_of_squares_total

end

sum_of_squares

def square_of_sum




end


