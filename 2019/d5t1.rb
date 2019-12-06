require_relative '../funs.rb'
require 'scanf'

$f = rin(2019, 5)

ops = $f.split(",").map(&:to_i)
ptr = 0
n = ops.length

while ptr < n
    op = ops[ptr] % 100

    $cmode = ops[ptr] / 100
    def getmode()
        ans = $cmode % 10
        $cmode /= 10
        ans
    end

    if op == 1
        a, b, c = ops[(ptr + 1)..(ptr + 3)]

        av = getmode == 0 ? ops[a] : a
        bv = getmode == 0 ? ops[b] : b
        ops[c] = av + bv

        ptr += 4
    elsif op == 2
        a, b, c = ops[(ptr + 1)..(ptr + 3)]

        av = getmode == 0 ? ops[a] : a
        bv = getmode == 0 ? ops[b] : b
        ops[c] = av * bv

        ptr += 4
    elsif op == 3
        ops[ops[ptr + 1]] = 1 # input

        ptr += 2
    elsif op == 4
        if getmode == 0
            puts ops[ops[ptr + 1]]
        else
            puts ops[ptr + 1]
        end
        
        ptr += 2
    elsif op == 99
        break
    else
        puts "Invalid op #{op}"
    end
end
