File.open(ARGV[0]).each do |line|
  line.strip!
  if line != ''

    numbers = line.split(" ").map { |number| number.to_f}
    i = 0
    while i < numbers.length
      j = 0
      k =numbers.length - i - 1
      while j < k
        current = numbers[j]
        if current > numbers[j+1]
          tmp = numbers[j]
          numbers[j] = numbers[j+1]
          numbers[j+1] = current
        end
        j += 1
      end
      i += 1
    end
    numbers.each_with_index do |number,index|
      print " " if index > 0
      print sprintf("%.3f", number)
      # print number
    end
    print "\n"
  end
end