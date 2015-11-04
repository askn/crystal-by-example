struct Foo(T)
end

Foo(Int32)

# ---
struct Fo
end

struct Bar < Fo
end

# ---
struct Test
  def initialize(@test)
  end
end

Test.new(nil)

# ---
struct User
  property name, age

  def initialize(@name, @age)
  end

  def print
    puts "#{age} - #{name}"
  end
end

puts User.new("osman", 3).name
User.new("ali", 9).print
