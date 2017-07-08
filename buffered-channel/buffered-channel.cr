ch = Channel(Int32).new(3)
ch.send 7
ch.send 5

2.times {
  puts "Yo"
  puts ch.receive
}
