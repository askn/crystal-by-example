strs = {"peach", "apple", "pear", "plum"}

puts strs.index("pear")
puts strs.includes?("grape")
puts strs.any? { |v| v.starts_with? "p" }
puts strs.all? { |v| v.starts_with? "p" }
puts strs.select { |v| v.includes? "e" }
puts strs.map { |v| v.upcase }
