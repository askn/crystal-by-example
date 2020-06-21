# using local time
puts Time.local
t = Time.local(2002, 10, 31, 2, 2, 2)
p t
puts t.year
puts t.month
puts t.day
puts t.hour
puts t.minute
puts t.second
puts t.day_of_week

# using UTC time
puts Time.utc
t = Time.utc(2002, 10, 31, 2, 2, 2)
p t
puts t.year
puts t.month
puts t.day
puts t.hour
puts t.minute
puts t.second
puts t.day_of_week
