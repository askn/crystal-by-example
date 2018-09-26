puts Time.parse("2012-11-01 22:08:12", "%F %T", Time::Location.local)

puts Time.parse("Fri Oct 31 23:00:24 2014", "%c", Time::Location.local)

puts Time.parse("20150624", "%Y%m%d", Time::Location.local)
