arg = File.readlines(ARGV[0])
n = arg.first.to_i
arg.delete_at 0

strings = []
longest = [nil,0]
arg.each_with_index do |line,index|

    line.strip!

    if line != ''
      l = line.length
      if (l > longest[1])
        longest[0] = index
        longest[1] = l
      end
      strings.push(l)
    end
end

puts arg[longest[0]]
arg.delete_at(longest[0])
strings.delete_at(longest[0])

(1..n-1).each do |n|

  longest = [nil,0]
  strings.each_with_index do |s,index|
    if (s > longest[1])
      longest[0] = index
      longest[1] = s
    end
  end
  puts arg[longest[0]]
  arg.delete_at(longest[0])
  strings.delete_at(longest[0])
end

