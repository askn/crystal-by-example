class Base
  SUBCLASSES = {% begin %}
    [
      {% for clazz in Base.subclasses %}
        {{clazz.methods.map(&.name.stringify)}} of String,
      {% end %}
    ] of Array(String)
  {% end %}
end

class Foo < Base
  def foo
  end

  def bar
  end
end

class Bar < Base
  def baz
  end
end

puts Base::SUBCLASSES