require_relative '../funs.rb'
require 'set'
require 'pp'

f = rfile "input/2018d1t1"

has = Set[0]
cur = 0

loop do
    f.split("\n").each do |x| 
        v = x.to_i
        cur += v
        
        if has.include? cur
            puts cur
            exit
        else
            has.add cur
        end
    end
end
