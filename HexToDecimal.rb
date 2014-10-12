File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    result = 0
    hexValues = ("a".."f").to_a
    line.reverse.each_char.with_index do |digit,index|
      n=0
      case digit
        when "a".."f"
          n = 9 + 1 + hexValues.find_index(digit)
        when "0".."9"
          n = digit.to_i
      end

      result += n * ( 16 ** index )

    end
  puts result
  end
end