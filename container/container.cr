class Container(T)

  def initialize(@values : T)
    pp @values
    pp typeof(@values)
  end
end

Container.new([1,2,3])
Container.new([1.0, 3.0, 4.0])
value = [[1, 2], [4,3,2],[1]]
Container.new(value)
value = [[1.0, 4.5], [2.2, 0.0]]
Container.new(value)
