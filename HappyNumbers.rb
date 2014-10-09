File.open(ARGV[0]).each_line do |line|
  line.strip!
  n = line.to_i
  if n > 0
    prev = []
    isHappy = 0
    begin
      r = 0
      if n > 10
        n.to_s.split('').each { |digit| r += digit.to_i * digit.to_i }
      else
        r = n * n
      end
      n = r
      if n == 1
        isHappy = 1
      else
        if prev[n].nil?
          prev[n] = 1
        else
          prev[n] += 1
        end
      end
    end while n != 1 and prev[n] < 2
    puts isHappy
  end
end