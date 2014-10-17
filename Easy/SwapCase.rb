offset = "a".ord - "A".ord
File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    line.each_char do |c|
      if c.match(/\p{Lower}/)
        print (c.ord - offset).chr
      elsif c.match(/\p{Upper}/)
        print (c.ord + offset).chr
      else
        print c
      end
    end
    print "\n"
  end
end