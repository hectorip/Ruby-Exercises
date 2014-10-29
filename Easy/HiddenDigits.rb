letters = ('a'..'j').to_a
values = ('0'..'9').to_a
valid = Hash.new
letters.each_with_index do |l,index|
  valid[l] = values[index]
  valid[values[index]]= values[index]
end
File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    found = false
    line.each_char do |c|
      if !valid[c].nil?
        found = true
        print valid[c]
      end
    end
    unless found
      print 'NONE'
    end
    print "\n"
  end

end