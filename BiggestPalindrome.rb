=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
#...
end
=end
topNumber = 1000
primes = []
maxPal = 0;
(3..1000).step(2) do |n|
	for prime in primes
		if n % prime == 0
			nonPrime = true
			break
		end 
	end
	unless nonPrime
		primes.push(n)
		 if n.to_s == n.to_s.reverse
    		maxPal = n
    	end
	end
end

puts maxPal
