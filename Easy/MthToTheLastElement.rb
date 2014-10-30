File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    elements = line.split(' ')
    mth = elements.pop.to_i

    length = elements.length
    searched = length - mth
    puts elements[searched] if searched >= 0

  end
end