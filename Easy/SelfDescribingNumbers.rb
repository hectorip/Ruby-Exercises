File.open(ARGV[0]).each_line do |line|

  line.strip!
  if line != ''

    digits = []
    success = true

    line.each_char.with_index do | digit, index |
      n = digit.to_i

      if(digits[index] == nil)
        digits[index] = [n,0]
      else
        digits[index][0] = n
      end

      if digits[n] != nil
        digits[n][1] += 1
      else
        digits[n] = [0,1]
      end
    end

      digits.each do |d|
        unless d[0] == d[1]
          puts '0'
          success = false
          break
        end
      end
      if success
        puts 1
      end

  end

end