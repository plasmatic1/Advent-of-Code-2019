require_relative '../funs.rb'
require 'scanf'

$f = rin(2019, 2)

arr = $f.split(",").map(&:to_i)
len = arr.length
i = 0

arr[1] = 12
arr[2] = 2

p arr

while i < len do
    if arr[i] == 1
        a, b, c = arr[(i + 1)..(i + 3)]
        arr[c] = arr[a] + arr[b]
    elsif arr[i] == 2
        a, b, c = arr[(i + 1)..(i + 3)]
        arr[c] = arr[a] * arr[b]
    elsif arr[i] == 99
        break
    else
        p "WTF"
        p arr[i..(i + 3)]
        break
    end

    i += 4
end

puts arr[0]
