def overdue

  line_num=0
  File.open('./checkouts.txt').each do |line|
  print "#{line_num += 1} #{line}"
  end
end

overdue

puts "HHHHH"