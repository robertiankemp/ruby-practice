
def auto_pairer

  list_of_people = ["Kun Wendell",
    "Jaya Lecce",
    "Sabah Whelan",
    "Jordan Dimitriou",
    "Sunan Hoffmann",
    "Maria Benini",
    "Karen Cloutier",
    "Jaswinder Wood",
    "Eugeneia Seward",
    "Boris Vela"]

list_of_people.shuffle!

(1..5).each { |n|
    pair = []
  pair << list_of_people.pop
  pair << list_of_people.pop
  puts "pair #{n}"
  puts pair
  puts " "
}

end


auto_pairer


