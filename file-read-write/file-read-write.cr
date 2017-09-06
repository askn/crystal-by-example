# This is not an in-depth guide to file operations but
# merely a basic idea how to work with text files in crystal

# use this path for our file
path = "example.txt"
# create a new file and open it in write mode
# other files with the same name will be overwritten
example_file = File.new path, "w"
example_file.puts "This fancy string will be written inside the file"
# now close the file
example_file.close

# check if it exists before opening
abort "file is missing", 1 if !File.file? path
# and read its content to a string
content = File.read path
puts content # => This fancy string will b...

# or just open it for further operations
our_file = File.open path, "w"
our_file.puts "Another line"
our_file.close

# we can also use iterators to work with files directly
File.each_line path do |line|
  puts line # => Another line
end
# Note that .puts will overwrite previous file contents
