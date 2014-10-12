a = "a".ord
z = "z".ord
aC = "A".ord
offset = a - aC
File.open(ARGV[0]).each_line do |line|

  line = line.split(' ')
  sentence = ""
  line.each_with_index do | word, index |
    if index != 0
      sentence += " "
    end
    firstChar = word[0].ord
    if firstChar >= a and firstChar <= z
      word[0] = (firstChar-offset).chr
    end
    sentence += word
  end
   puts sentence
end