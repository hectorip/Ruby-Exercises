File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    numbers = line.split(' ')
    original = numbers.dup
    winner = 0
    n_unique = nil
    not_unique = []
    offset = 0
    while numbers.length > 0
      n = numbers.shift
      numbers_new = numbers.dup
      io = 0
      unique = true
      numbers.each_with_index do |num, index|
        if num == n
          numbers.delete_at index - io
          unique = false
          io += 1
        end
        # numbers = numbers_new
      end
      if unique
        if n_unique.nil? or n_unique > n
          n_unique = n
        end
      end
    end
    winner = 0
    original.each_with_index do |n,index|
      if n == n_unique
        winner = index + 1
      end
    end
    puts winner
  end
end