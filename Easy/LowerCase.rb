a = "A".ord
z = "Z".ord
aC = "a".ord
offset = aC - a 
File.open(ARGV[0]).each_line do |line|

  line = line.split(' ')
  sentence = ""
  line.each_with_index do | word, index |
    if index != 0
      sentence += " "
    end
      word.each_char do |letter| 
        currentChar = letter.ord
        if currentChar >=a and currentChar <= z
          currentChar += offset;
        end
          sentence += (currentChar).chr
      end
  end
  puts sentence
end