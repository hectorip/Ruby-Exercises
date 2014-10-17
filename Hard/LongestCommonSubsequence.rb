def removeNotCommonChars(st)
  st[0].each_char do |c|
    unless st[1].include? c
      st[0].delete! c
    end
  end
  st[1].each_char do |c|
    unless st[0].include? c
      st[1].delete! c
    end
  end
  return st
end

def getSubsequences(st)
  subsequences = []
  st.each_char do |c|
    new_sub = subsequences.dup
    subsequences.each do |sub|
      new_sub.push sub + c
    end
    new_sub.push c
    subsequences = new_sub
  end
  return subsequences
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    strings = line.split(";")
    strings = removeNotCommonChars(strings)
    s1 = getSubsequences(strings[0])
    cs = []
    cl = 0
    n = ''
    longest = ''
    strings[1].each_char do |c|
      new_sub = cs.dup
      new_sub.push c
      cs.each do |sub|
        n = sub + c
        if s1.include? n
          new_sub.push n
          if n.length > cl
            longest = n
            cl = n.length
          end
        end
      end
      cs = new_sub
    end
  puts longest
  end
end

