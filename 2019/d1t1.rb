require_relative '../funs.rb'
require 'scanf'

f = rin(2019, 1)

ans = f.split("\n").map { |x| x.to_i.div(3) - 2 }.sum
puts ans
