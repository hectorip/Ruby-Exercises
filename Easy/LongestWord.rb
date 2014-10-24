File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    words = line.split(' ')
    longest = ''
    lc = 0
    words.each do |word|
      c = word.length
      if c > lc
        longest = word
        lc = c
      end
    end
    puts longest
  end
end