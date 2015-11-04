c = Channel(String).new
spawn do
  c.send "ping"
end

puts Channel.receive_first(c)

ch = Channel(Int32).new
spawn { sleep 3; ch.send 1 }
spawn { sleep 1; ch.send 2 }
spawn { sleep 2; ch.send 3 }

puts (1..3).map { ch.receive }
