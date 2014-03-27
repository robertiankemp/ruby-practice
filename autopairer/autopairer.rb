class Autopairer
  def people
    [
      "Kun Wendell",
      "Jaya Lecce",
      "Sabah Whelan",
      "Jordan Dimitriou",
      "Sunan Hoffmann",
      "Maria Benini",
      "Karen Cloutier",
      "Jaswinder Wood",
      "Eugeneia Seward",
      "Boris Vela"
    ]
  end


  def randomize
    people.shuffle!
  end

  def pair
    (1..(people.length / 2)).each {|x|
      pair = []
      pair << randomize.pop
      pair << randomize.pop
      puts "Pair#{x} #{pair[0]}, #{pair[1]}"
    }
  end
end