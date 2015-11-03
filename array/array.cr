a = [] of Int32
puts a

# 6 elemanlı 0 ile dolu bir array
b = Array(Int32).new(6, 0)
b[3] = 100
puts b # [0, 0, 0, 100, 0, 0]

puts "Len: #{b.size}" # 6

c = [1, 2, 3, 4, 5] of Int32
puts c

two_d = [[0, 0], [0, 0]]
puts two_d #  [[0, 0], [0, 0]]

two_e = Array(Array(Int32)).new(2, [0, 0])
puts two_e #  [[0, 0], [0, 0]]
