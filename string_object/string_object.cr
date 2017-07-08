struct StringObj
  getter string_1
  getter string_2
  getter string_3
  getter string_4
  getter string_5
  getter string_6
  getter string_7
  getter string_8
  getter string_9
  getter string_10

  def initialize
    @string_1 = "str.string_1"
    @string_2 = "str.string_2"
    @string_3 = "str.string_3"
    @string_4 = "str.string_4"
    @string_5 = "str.string_5"
    @string_6 = "str.string_6"
    @string_7 = "str.string_7"
    @string_8 = "str.string_8"
    @string_9 = "str.string_9"
    @string_10 = "str.string_10"
  end
end

str = StringObj.new
p str.string_1
p str.string_2
p str.string_3
p str.string_4
p str.string_5
p str.string_6
p str.string_7
p str.string_8
p str.string_9
p str.string_10
