x = 0
proc = ->{ x += 1; x }
puts proc.call # => 1
puts proc.call # => 2


def counter
  x = 0
  ->{ x += 1; x }
end

proc = counter
puts proc.call # => 1
puts proc.call # => 2
