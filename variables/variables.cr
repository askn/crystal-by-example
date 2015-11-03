a = "initial"
puts a
a = 3
puts a

x :: String
x = "osman"
puts x
# tek satırda atama yapma ?

e :: Int32
puts e
# e = "osman"
# Error in ./variables.cr:11: type must be Int32, not (String | Int32)

# y :: Int32 | String
# puts y # segmentation fault

# tipi ile beraber çoklu atama ?
b, c = 1, 2
puts b, c

d = true
puts d
