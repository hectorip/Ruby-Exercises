File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    sets = line.split(';')
    sets.map! do |set|
      set.split(',')
    end
    count = 0
    sets[0].each do |element|
      if sets[1].include?(element)
        print "," if count != 0
        count = 1
        print element
      end

    end
    print "\n"
  end

end