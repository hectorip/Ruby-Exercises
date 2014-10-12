def multiplication(top)
  range = (1..top)

  range.each do |n|
    line = ''
    range.each do |m|
      r = (n*m).to_s
      spaces = " " * (4 - r.length)
      line += spaces + r
    end
    puts line.strip
  end
end

multiplication(12)