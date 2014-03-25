puts "Give me a number and I will produce the difference between
the square of sums and the sum of squares."

@no = gets.chomp.to_i
@numbers = (1..@no)

@sum_of_squares_total = @numbers.map { |n| n ** 2}.inject(:+)

total_no2 = @numbers.to_a.inject(:+)       
@square_of_sum_total = total_no2**2

  def total
    puts "your sum of squares is #{@sum_of_squares_total}"
    puts "and your square of sums is #{@square_of_sum_total}"
    difference = @square_of_sum_total - @sum_of_squares_total
    puts "and the difference is #{difference}"
  end

total







