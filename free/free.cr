class Foo
  def initialize
    @x = 10
    @y = "some string"
    puts "initialized"
  end

  def finalize
    puts "Never called"
  end
end

foo = Foo.new
p foo # => #<Foo:0x10be27fd0 @x=10>
GC.free(Pointer(Void).new(foo.object_id)) # This line frees the memory
#p foo # => #<Foo:0x10be27fd0 @x=1>
p foo.class
p foo = nil
p foo.class
