File.open(ARGV[0]).each_line do |line|

  line = line.split(',')
  if line.count == 3
    n = line[0].to_i.to_s(2).reverse
    p1 = line[1].to_i
    p2 = line[2].to_i
    puts n[p1 - 1] == n[p2 - 1]
  end
end