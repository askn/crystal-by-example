x = 1
case x
when 1
  'b'
when 2
  'c'
else
  'd'
end

__temp_1 = x
if 1 === __temp_1
  'b'
elsif 2 === __temp_1
  'c'
else
  'd'
end

# ---
x = 1
case x
when 1, 2
  'b'
end

if 1 === x || 2 === x
  'b'
end

#  ---
case x = 1
when 2
  3
end

x = 1
if 2 === x
  3
end

# ---
case
when 2, 9
  3
when 4
  5
end

if 2 || 9
  3
elsif 4
  5
end

# ---
x = 1
case x
when nil
  'b'
end
if x.is_a?(::Nil)
  'b'
end

#  ---
s = "askn"
case s
when .size
  2
end
__temp_1 = s
if __temp_1.size
  2
end
