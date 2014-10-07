size = 0
File.open(ARGV[0]).each_line do | line |
  line.each_char do |c|
    size +=1
  end
end
puts size