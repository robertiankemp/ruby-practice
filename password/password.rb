class Password

  def characters
    characters_array = ("a"..'z').to_a
    characters_array << ("A".."Z").to_a
    characters_array << (0..9).to_a
    characters_array << ("!".."/").to_a
    characters_array.flatten!
    @characters_array = characters_array
  end

  def generate(n)
    characters
    password = @characters_array.shuffle!.sample(n).join
  end

end

# example = Password.new
# example.generate(5)