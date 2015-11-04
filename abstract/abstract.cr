class Foo
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

abstract class Geometry
  abstract def area
  abstract def perim
end

class Rect < Geometry
  def initialize(@width, @height)
  end

  def area
    @width * @height
  end

  def perim
    2 * @width + 2 * @height
  end
end

puts Rect.new(3, 6).area
