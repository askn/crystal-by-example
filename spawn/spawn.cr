def xxx(name)
  sleep 4
  3.times do |i|
    puts "#{name} - #{i}"
  end
end

xxx("normal")

spawn xxx("spawn")

spawn do
  sleep 3
  puts "Finished from 3"
end

spawn do
  sleep 5
  puts "Finished from 5"
end

sleep 6
