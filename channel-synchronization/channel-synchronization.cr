def worker(count : Int32, done : Channel(Bool))
  puts "working #{count}"
  sleep count
  puts "done #{count}"
  done.send true
end

done = Channel(Bool).new
worker_count = 10
worker_count.times do |count|
  spawn worker(count, done)
end
# eğer bu satırı silersek başlamasını beklemeden çıkar
worker_count.times do
  done.receive
end
