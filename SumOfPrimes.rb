
def sumOfPrimes(top)
	primes = [2]
	sum = 2
	n = 3
	count = 1
	while count < top do
		isPrime = true
		primes.each do |prime|
			if n % prime == 0
				isPrime = false
				break
			end
		end
		if isPrime
			primes.push(n)
			sum += n
			count +=1
		end
		n += 2
	end
	return sum
end

puts sumOfPrimes(1000)