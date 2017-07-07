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

def foo(x, y : Int32 = 1, z : Int64 = 2)
  x + y + z
end

def foo(x : T) forall T
end

foo(3) # x = 3, T = Int32

#  return type


def sa(name : String) : Int32
  3
end

puts sa("ali")

# ---
def a : {Int32, String}
  return 1, "2"
end

puts a
