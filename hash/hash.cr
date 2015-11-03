a = {} of String => Int32
a["gs"] = 1905

puts a

b = Hash(Int32 | Char, Int32){3 => 4}
b[1] = 2
b['a'] = 9
puts b

puts b.size

b.delete('a')
puts b

p b["bar"]? # nil
