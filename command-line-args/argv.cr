# Demo of command line arguments
# ARGV[0]: First command line argument
# (not the executable name)
# (Be aware: `crystal build` sends all arguments to the compiler.
# Add an additional `--` between compiler arguments and the other)
# ARGV is an array of strings
puts "Number of command line arguments: #{ARGV.size}"
ARGV.each_with_index {|arg, i| puts "Argument #{i}: #{arg}"}

# The executable name is available as PROGRAM_NAME
puts "Executable name: #{PROGRAM_NAME}"
