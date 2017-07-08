class Foo; end
class Bar < Foo; end
class Cux < Foo; end
class MyClass
  def initialize(@foo : Foo)
  end
end


MyClass.new(Foo.new)
bar = Bar.new
MyClass.new(bar)
MyClass.new(Cux.new)
