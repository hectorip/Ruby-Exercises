File.open(ARGV[0]). each_line do |line|
  line.strip!
  if line != ''
    chars = line.split('')
    found = false
    while chars.length > 0
      current = chars.shift
      unless chars.include? current
        puts current
        found = true
        break
      end
      tmp = []
      chars.each_with_index do |element, index|
        unless element == current
          tmp.push element
        end
      end
      chars = tmp
    end
    unless found
      puts ''
    end
  end
end