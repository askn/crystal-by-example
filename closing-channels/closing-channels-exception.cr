jobs = Channel(Int32).new(5)

def foo(jobs)
  loop do
    begin
      item = jobs.receive
      puts "received job #{item}"
    rescue
      puts "received all jobs"
      return
    end
  end
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
