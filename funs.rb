def rfile(path)
    data = ''
    File.open(path, 'r') do |f|
        data = f.read
    end
    
    data
end

def rin(year, day, task=1)
    rfile "input/#{year}d#{day}t#{task}"
end

def min(x, y); x < y ? x : y; end
def max(x, y); x < y ? y : x; end
