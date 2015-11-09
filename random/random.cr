puts rand(100) # 0 <= x < 100
puts rand      # 0 <= x < 1

r = Random.new(42)
puts r.rand
puts r.rand

y = Random.new(42)
puts y.rand
puts y.rand
