File.open(ARGV[0]).each_line do  |line|
  line.strip!
  if line != ''

    elements = line.split(',')
    distinct_elements = {}
    elements.each do |element|

      unless distinct_elements[element].nil?
        distinct_elements[element] = 1
      else
        distinct_elements[element] += 1

    end

  end

end