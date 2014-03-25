def password_generator

  puts "how long do you want your random password"
  length = gets.chomp.to_i
  password = ((33.chr)..(126.chr)).to_a.shuffle.take(length).join
  puts password
end

password_generator