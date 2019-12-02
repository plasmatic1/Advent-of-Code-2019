require_relative '../funs.rb'
require 'scanf'

f = rin(2019, 1)

def fuel x
    req = x.div(3) - 2
    if req <= 0
        return 0
    end
    req + fuel(req)
end

ans = f.split("\n").map { |x| fuel x.to_i }.sum
puts ans
