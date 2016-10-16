a = "initial"
puts a
a = 3
puts a

# Currently type restrictions are not allowed for local variables
# so we need the next few examples in a class

class WrapperClass
  @x : String
  @e : Int32
  @y : Int32 | String

  def initialize
    @x = "osman"
    puts @x

    @e = 1
    puts @e

    # @e = "osman"
    # in ./variables/variables.cr:20: instance variable '@e' of WrapperClass must be Int32, not String
    @y = 1
    @y = "osman"
    puts @y
  end
end

WrapperClass.new

# Multiple assignments in a single line
b, c = 1, 2
puts b, c

d = true
puts d
