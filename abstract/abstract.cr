# class Foo
#   abstract def foo
# end
# Error in abstract/abstract.cr:2: can't define abstract def on non-abstract class

abstract class Foo
  abstract def foo
end

class Bar < Foo
  def foo
    1
  end
end

# ---

abstract class Foo
  abstract def foo
end

# ---

abstract class Geometry(T)
  abstract def area : T
  abstract def perim : T
end

class Rect < Geometry(Int32)
  def initialize(@width : T, @height : T)
  end

  def area
    @width * @height
  end

  def perim
    2 * @width + 2 * @height
  end
end

puts Rect.new(3, 6).area
