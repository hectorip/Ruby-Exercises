File.foreach(ARGV[0]) do |line|
	if line.to_i > 0
		number = line.to_i
		sum = 0
		while number / 10 > 0
			sum += number % 10
			number /= 10
		end
		sum += number
		puts sum
	end
end