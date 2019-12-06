require_relative '../funs.rb'
require 'scanf'

$f = rin(2019, 5)

$ops = $f.split(",").map(&:to_i)
ptr = 0
n = $ops.length
input = 5
puts "N: #{n}"

while ptr < n
    op = $ops[ptr] % 100

    $cmode = $ops[ptr] / 100
    def getmode()
        ans = $cmode % 10
        $cmode /= 10
        ans
    end

    def getparamval(id)
        getmode == 0 ? $ops[id] : id
    end

    puts "ptr: #{ptr}, op: #{op}"
    p $ops

    if op == 1
        a, b, c = $ops[(ptr + 1)..(ptr + 3)]
        puts "bef: #{[a, b, c]}"
        a, b = [a, b].map { |x| getparamval x }
        puts "A: #{[a, b, c]}"
        $ops[c] = a + b

        ptr += 4
    elsif op == 2
        a, b, c = $ops[(ptr + 1)..(ptr + 3)]
        a, b = [a, b].map { |x| getparamval x }
        $ops[c] = a * b

        ptr += 4
    elsif op == 3
        $ops[$ops[ptr + 1]] = input # input

        ptr += 2
    elsif op == 4
        if getmode == 0
            puts $ops[$ops[ptr + 1]]
        else
            puts $ops[ptr + 1]
        end
        
        ptr += 2
    elsif op == 5
        a, b = $ops[(ptr + 1)..(ptr + 2)]
        a = getparamval a
        if a != 0
            ptr = getparamval b
        else
            ptr += 3
        end
    elsif op == 6
        a, b = $ops[(ptr + 1)..(ptr + 2)]
        a = getparamval a
        if a == 0
            ptr = getparamval b
        else
            ptr += 3
        end
    elsif op == 7
        a, b, c = $ops[(ptr + 1)..(ptr + 3)]
        a, b = [a, b].map { |x| getparamval x }

        if a < b
            $ops[c] = 1
        else
            $ops[c] = 0
        end

        ptr += 4
    elsif op == 8
        a, b, c = $ops[(ptr + 1)..(ptr + 3)]
        a, b = [a, b].map { |x| getparamval x }
        # puts "arr: #{$ops[(ptr + 1)..(ptr + 3)]}, params: #{a} #{b} #{c}"

        if a == b
            $ops[c] = 1
        else
            $ops[c] = 0
        end

        ptr += 4
    elsif op == 99
        break
    else
        puts "Invalid op #{op}, ptr = #{ptr}"
        p $ops[ptr..n]
        break
    end
end
