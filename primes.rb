require 'prime'

#sums all the primes below n

def prime_sum(n)
  total = 0
  (1..n).each { |x|
    if x.prime?
      total = total + x
    end
  }
  puts total
end

prime_sum(2000000)







# def prime_sum(n)
#   prime_array=[]

#   (1..n).each {|x|
#     if x.prime?
#       prime_array << x
#     end
#   }
#   puts prime_array.inject(:+)

# end

# prime_sum(2000000)