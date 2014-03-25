def fibonnaci_sequence

  (1..10).each { |n|
       
    x = 1
    y = 1
    z = x + y
    puts z
    x = y
    y = z
  }


end