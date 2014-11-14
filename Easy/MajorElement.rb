File.open(ARGV[0]).each_line do  |line|
  line.strip!
  if line != ''

    elements = line.split(',')
    distinct_elements = {}
    major_edge = elements.length / 2
    found = false
    elements.each do |element|

      if distinct_elements[element].nil?
        distinct_elements[element] = 1
      else
        distinct_elements[element] += 1
        if distinct_elements[element] > major_edge
          puts element
          found = true
          break
        end
      end
    end
    puts "None" if !found
  end

end