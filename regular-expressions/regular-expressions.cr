puts "peach".match /p([a-z]+)ch/
puts /p([a-z]+)ch/.match "peach"

puts /p([a-z]+)ch/ =~ "peach"

puts "peach".scan /p([a-z]+)ch/
