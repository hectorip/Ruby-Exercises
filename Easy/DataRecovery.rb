File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    words,numbers = line.split(';')
    words = words.split(' ').map { |word| word.strip}
    numbers = numbers.split(' ').map { |n| n.to_i}
    ordered = []
    sequence = (1..words.length).to_a
    last_word = words.pop
    words.each_with_index do |word, index|
      ordered[numbers[index]] = word
      sequence.delete(numbers[index])
    end
    ordered[sequence[0]] = last_word
    puts ordered.join(' ')
  end
end