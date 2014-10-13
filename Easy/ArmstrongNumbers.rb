File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    n = line.to_i
    pow = line.length
    line.each_char do |digit|
      n -= digit.to_i ** pow
    end
    puts (n == 0).to_s.capitalize
  end
end