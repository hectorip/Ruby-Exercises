File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    elements  = line.split(',')
    numbers   = Array.new
    words     = Array.new
    elements.each do |element|
      if element == '0' or element.to_i != 0
        numbers.push element.to_i
      else
        words.push element
      end
    end
    puts words.join(',') + ((words.length > 0  and numbers.length > 0) ? '|' : '') + numbers.join(',')
  end
end