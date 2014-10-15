File.open(ARGV[0]).each_line do |line|
  line.strip!
  letters = ("a".."z").to_a

    if line != ''
      indexArr = {}
      line.downcase!
      line.each_char do |c|

        if letters.include?(c)

          if !indexArr.include?(c)
            indexArr[c] = 1
          else
            indexArr[c] += 1
          end

        end
      end
      vals = indexArr.values.sort.reverse
      res = 0
      vals.each_with_index do |val, index|
          res += val * (26 - index)
      end
      puts res
    end
end