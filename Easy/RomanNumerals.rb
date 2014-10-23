numerals = Array.new()
numerals.push ["I", "V"]
numerals.push ["I", "X"]
numerals.push ["X", "L"]
numerals.push ["X", "C"]
numerals.push ["C", "D"]
numerals.push ["C", "M"]
numerals.push ["M", ""]

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    number = line.to_i
    current_pow = 0
    roman = ""
    while number > 0 do
      res = number % 5
      number = number - res
      res_2 = (number % 10) / 5
      number /= 10
      if res <= 3
        add = numerals[current_pow][0] * res
        if res_2 == 1
          add = numerals[current_pow][1] + add
        end
      else
        add = numerals[current_pow][0]
        add += numerals[current_pow + res_2][1]
      end
      roman = add + roman
      current_pow += 2
    end

    puts roman
  end
end