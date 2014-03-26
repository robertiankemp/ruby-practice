class Square_of_sums

  def initialize(n)
    @n = n
  end

  def square_of_sum
    n = @n
    ((1..n).to_a.inject(:+))**2
  end

  def sum_of_square
    n = @n
    total_before_sum = []
    (1..n).each { |x|
      total_before_sum << x ** 2
    }
    total_before_sum.inject(:+)
  end

  def total
    square_of_sum - sum_of_square
  end

end