require_relative '../funs.rb'
require 'scanf'
require 'set'

$f = rin(2019, 6)

$g = Hash.new {
    []
}
vals = Set.new
$par = Hash.new(nil)
$lv = Hash.new(0)

$f.split("\n").map { |x| x.split(")") }.each do |a, b|
    # p g[a]
    $g[a] = $g[a] + [b]
    $g[b] = $g[b] + [a]
    vals << a
    vals << b
end

# p g
# p vals

def dfs(x, p=nil, lv=0)
    $par[x] = p
    $lv[x] = lv
    $g[x].each do |y|
        if y != p
            dfs(y, x, lv + 1)
        end
    end
end

dfs("YOU")
puts ($lv["SAN"] - 2)
