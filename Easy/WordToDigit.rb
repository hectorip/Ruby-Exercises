numbers = {
    "zero"  => 0,
    "one"   => 1,
    "two"   => 2,
    "three" => 3,
    "four"  => 4,
    "five"  => 5,
    "six"   => 6,
    "seven" => 7,
    "eight" => 8,
    "nine"  => 9
}

File.open(ARGV[0]).each_line do |line|
  line.strip!
   if line != ''
      line = line.split(';')
      line.each do |word|
        print numbers[word]
      end
   end
    print "\n"
end