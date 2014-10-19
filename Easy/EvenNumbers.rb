File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    puts (-1 + line.to_i % 2 ) * -1

  end
end