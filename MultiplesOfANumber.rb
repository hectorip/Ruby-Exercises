File.open(ARGV[0]).each_line do |line|

  line = line.split(',')
  if line.count == 2
    m = line[1].to_i
    while m < line[0].to_i
      m += line[1].to_i
    end
    puts m
  end
end

