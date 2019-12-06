require_relative '../funs.rb'
require 'scanf'
require 'set'

$f = rin(2019, 6)

$g = Hash.new { [] }
vals = Set.new

$f.split("\n").map { |x| x.split(")") }.each do |a, b|
    # p g[a]
    $g[a]+=[b]
    vals << a
    vals << b
end

p $g
# p vals

def dfs(x)
    ret = 1
    $g[x].each do |y|
        ret += dfs(y)
    end
    ret
end

tot = 0
vals.each do |x|
    tot += dfs(x)
end
puts (tot - vals.length)
