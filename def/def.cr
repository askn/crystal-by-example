def String.askin
  "askin"
end

puts String.askin

class String
  def tsk
    "tisikkirlir " + self
  end
end

puts "ali".tsk

def foo(x : Int, y : Float)
end

def foo(x, y = 1 : Int32, z = 2 : Int64)
  x + y + z
end

def foo(x : T)
end

foo(3) # x = 3, T = Int32

#  return type


def sa(name : String) : Int32
  3
end

puts sa("ali")
