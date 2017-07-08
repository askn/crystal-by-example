require "colorize"
files = Dir["./**/**.cr"]

files.each do |x|
  next if x == "./run_all.cr"
  print "--------"
  x.size.times { print "-" }
  puts
  puts "Running #{x}".colorize(:blue)
  op = system("cd #{File.dirname(x)} && crystal #{File.basename(x)}")
  unless op
    puts "Error detected - exiting!".colorize(:red)
    exit 1
  end
end
