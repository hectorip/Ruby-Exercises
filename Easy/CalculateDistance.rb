File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    line = line.split(" ").map {|c| c.gsub!(/[,\(\)]/,'').to_i }
    x_2 = (line[0] - line[2]) ** 2
    y_2 = (line[1] - line[3]) ** 2
    c   = Math.sqrt(x_2 + y_2).to_i
    puts c
  end
end