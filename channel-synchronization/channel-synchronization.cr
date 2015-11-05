def worker(done : Channel(Bool))
  puts "working"
  sleep 2
  puts "done"
  done.send true
end

done = Channel(Bool).new
spawn worker(done)

# eğer bu satırı silersek başlamasını beklemeden çıkar
done.receive
