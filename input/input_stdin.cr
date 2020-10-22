# Read a line from the standard input
s = gets()
# s will have the input line along with "\n"
puts "You entered: #{s}"
if s
    puts "Lengh of line: #{s.size}"
    puts "Bytesize of line: #{s.bytesize}"
end

# Example:

#♫ß$€
#You entered: ♫ß$€
#Lengh of line: 5
#Bytesize of line: 10
