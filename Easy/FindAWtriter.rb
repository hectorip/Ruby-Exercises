File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    code, key = line.split("|")
    key.split(" ").each do |k|
      print code[k.to_i - 1]
    end
  end
  print "\n"
end