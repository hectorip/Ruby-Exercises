File.foreach(ARGV[0]) do |line|
    line.strip!
    if line != ''
		number = line.to_i
		if number > 0
			current = 1
			previous = 0
			result = 1
			i = 2
			while i <= number do
				result = previous + current
				previous = current
				current = result
				i+= 1
			end
		puts result
		else
	    	puts "0"
		end
	end
end