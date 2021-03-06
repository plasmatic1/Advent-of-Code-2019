require_relative '../funs.rb'
require 'scanf'
require 'set'

$f = rin(2019, 4)
l, r = $f.split('-').map(&:to_i)

def adjsame(arr)
    (0..(arr.length - 2)).each do |i|
        if arr[i] == arr[i + 1]
            return true
        end
    end
    false
end

def decreasing(arr)
    (0..(arr.length - 2)).each do |i|
        if arr[i] > arr[i + 1]
            return true
        end
    end
    false
end

tot = 0

(l..r).each do |x|
    digs = x.to_s.split('').map(&:to_i)
    # p digs, decreasing(digs), adjsame(digs)
    if not decreasing(digs) and adjsame(digs)
        tot += 1
    end
end

puts tot
