upper = ("A".."Z").to_a

File.open(ARGV[0]).each_line do |line|
  line.strip!

    if line != ''
      up = 0
      low = 0
      line.each_char do |c|

        if upper.include?(c)
          up = up + 1
        else
          low = low + 1
        end
      end
      total = up.to_f  + low
      up_ratio = up.to_f   / total *100
      low_ratio = low.to_f   / total *100

      puts "lowercase: %.2f uppercase: %.2f" % [low_ratio, up_ratio]
    end
end