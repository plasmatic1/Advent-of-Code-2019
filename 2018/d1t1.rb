require_relative '../funs.rb'

f = rfile 'input/2018d1t1'

v = 0

f.split("\n").each { |x|
    # p x
    v += x.to_i
}

puts v
