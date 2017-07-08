# License is MIT, though I always appreciate a short in-source comment like I prepared.
# But as it's MIT, you may omit it of course.

# Helper structure which acts like a pointer, but allows direct access to the
# underlying object by delegating almost all calls on it to the pointee.
#
# It's best compared to C's -> operator.
#
# (Based on https://gist.github.com/Papierkorb/c46e205e27e4c341965438b18e28e09e)
struct Ref(T)
  getter ptr : Pointer(T)

  def self.create
    new(T.new)
  end

  def initialize(@ptr : Pointer(T))
  end

  def initialize(obj : Reference)
    @ptr = pointerof(obj)
  end

  def initialize(val : Value)
    @ptr = Pointer(T).malloc
    @ptr.value = val
  end

  macro method_missing(call)
    @ptr.value.{{ call }}
  end
end
