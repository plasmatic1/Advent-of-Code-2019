require_relative '../funs.rb'

f = rin(2018, 2)

c2 = 0
c3 = 0

f.split("\n").each do |x|
    h2 = false
    h3 = false

    for c in 'a'..'z'
        cnt = x.count c
        if cnt == 2
            h2 = true
        elsif cnt == 3
            h3 = true
        end
    end

    if h2
        c2 += 1
    end
    if h3
        c3 += 1
    end
end

puts c2 * c3
