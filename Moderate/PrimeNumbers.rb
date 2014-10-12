File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    top = line.to_i-1
    if top < 2
      #print "\n"
      next
    end
    print 2
    if top == 2
      print "\n"
      next
    end
    primes = []
    maxPal = 0
    (3..top).step(2) do |n|

        nonPrime = false

        primes.each do |prime|

          if n % prime == 0
            nonPrime = true
            break
          end
        end

          unless nonPrime
            print "," + n.to_s
            primes.push(n)
          end

        end

      print "\n"
  end
end

