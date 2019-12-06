require_relative '../funs.rb'
require 'scanf'
require 'set'

$f = rin(2019, 3)
wires = $f.split("\n").map { |x| x.split(",").map { |y| y.scanf("%c%d") }.map { |dir, v| [dir] * v }.flatten }
n = wires.length

def disToOrigin((x1, y1))
    return x1.abs + y1.abs
end

def locs(wire)
    x = 0
    y = 0
    pos = []

    wire.each do |dir|
        pos << [x, y]
        case dir
        when 'U'
            y += 1
        when 'D'
            y -= 1
        when 'R'
            x += 1
        when 'L'
            x -= 1
        end
    end
    pos << [x, y]

    Set.new(pos)
end

# puts n

best = 1000000000
for i in 0...n
    for j in (i + 1)...n
        a = locs(wires[i])
        b = locs(wires[j])

        a.each do |x|
            if b.include? x and x != [0, 0]
                best = min(best, disToOrigin(x))
            end
        end
    end
end

puts best
