require_relative '../funs.rb'

f = rin(2018, 2)


def dif(x, y)
    cnt = 0
    for i in 0...(x.length)
        if x[i] != y[i]
            cnt += 1
        end
    end

    cnt
end

ids = f.split("\n")
n = ids.length

for i in 0...n
    for j in (i + 1)...n
        if dif(ids[i], ids[j]) == 1
            puts ids[i], ids[j]
            exit
        end
    end
end

