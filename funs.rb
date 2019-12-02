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
