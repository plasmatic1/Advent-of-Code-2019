require 'scanf'

s = ["d, d, d"]
# puts s.map(&method(:split).curry[", "])

# d = method(:split).curry[", "]
# p d
# p d.call(s[0])

# p [1] * 8

h = Hash.new { [] }

b = h[:a]
p b
p h

b << 6

p b, b.to_sym, h, h.to_sym
