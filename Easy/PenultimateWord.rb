File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    words = line.split(" ")
    puts words[words.length - 2]
  end
end