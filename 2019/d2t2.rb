require_relative '../funs.rb'
require 'scanf'

$f = rin(2019, 2)

def run(n, v)
    arr = $f.split(",").map(&:to_i)
    len = arr.length
    i = 0

    arr[1] = n
    arr[2] = v

    # p arr
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

    arr[0]
end

want = 19690720

(0..100).each do |n|
    (0..100).each do |v|
        out = run(n, v)
        if out == want
            puts "N=#{n}, V=#{v}, out=#{100 * n + v}"
            exit
        end
    end
end
