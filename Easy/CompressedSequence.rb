File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    sequence = line.split(' ')
    compressed = []
    count = 1
    current = sequence.shift
    sequence.each do |number|
      if current == number
        count += 1
      else
        compressed.push count,current
        current = number
        count = 1
      end
    end
    compressed.push count,current
  puts compressed.join(' ')
  end
end