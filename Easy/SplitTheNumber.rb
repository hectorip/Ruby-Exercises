letters = ('a'..'z')
File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    number,pattern =line.split(' ')
    number = number.split('')
    new_number = ''
    i = 0
    while letters.include? pattern[i]
      new_number += number.shift
      i += 1
    end
    n1 = new_number.to_i
    n2 = number.join.to_i
    if pattern[i] == '+'
      puts n1 + n2
    else
      puts n1 - n2
    end
  end
end