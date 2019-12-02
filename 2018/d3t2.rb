require_relative '../funs.rb'
require 'scanf'

f = rin(2018, 3)

n = 1001
claims = Array.new(n) { |i| Array.new(n) { |j| 0 } }
# p claims

#3 @ 5,5: 2x2
f.scanf("#%d @ %d,%d: %dx%d") do |id, x, y, w, h|
    # p [id, x, y, w, h]
    for i in x...(x + w)
        for j in y...(y + h)
            claims[i][j] += 1
        end
    end
end

tot = 0

for i in 0...n
    for j in 0...n
        if claims[i][j] >= 2
            tot += 1
        end
    end
end

puts tot
