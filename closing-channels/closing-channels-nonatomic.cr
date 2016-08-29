jobs = Channel(Int32).new(5)
done = Channel(Bool).new

def foo(done, jobs)
  loop do
    if jobs.closed? && !jobs.empty?
      puts "received job #{jobs.receive}"
    else
      puts "received all jobs"
      done.send true
      return
    end
  end
end

spawn foo(done, jobs)

3.times do |j|
  jobs.send j
  puts "sent job #{j}"
end

jobs.close
puts("sent all jobs")
done.receive
