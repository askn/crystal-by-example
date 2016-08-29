jobs = Channel(Int32).new(5)

def foo(jobs)
  while item = jobs.receive?
    puts "received job #{item}"
  end
  puts "received all jobs"
end

spawn {
  3.times do |j|
    jobs.send j
    puts "sent job #{j}"
  end
  puts("sent all jobs")
  jobs.close
}

foo(jobs)
