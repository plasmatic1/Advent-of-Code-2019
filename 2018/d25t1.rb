require_relative '../funs.rb'
require 'scanf'

f = rin(2018, 25)

$pts = f.scanf("%d,%d,%d,%d") { |a| a }
$vis = Array.new($pts.length) { |i| false }
# n = $pts.length

def dis((x, *xs), (y, *ys))
    if xs.length == 0
        return (x - y).abs
    end

    (x - y).abs + dis(xs, ys)
end

def dfs(i)
    if $vis[i]
        return
    end
    $vis[i] = true

    for j in 0...$pts.length
        if dis($pts[i], $pts[j]) <= 3
            dfs(j)
        end
    end
end

tot = 0
for i in 0...$pts.length
    if not $vis[i]
        tot += 1
        dfs(i)
    end
end

puts tot
