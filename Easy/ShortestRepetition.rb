File.open(ARGV[0]).each_line do |s|
  s.strip!
  if s!=''
    current = s[0]
    initiator = current
    partition = false

    (1..s.length-1).each do |index|
      if s[index] == initiator
        sd = s.dup
        cl = current.length
        (cl..s.length-1).step(cl).each do |n_index|
          unless sd[n_index,cl] == current
            break
          end
          partition = true
        end
        if partition
          puts cl
          break
        end
      else
        current += s[index]
      end
    end

    unless partition
      puts current.length
    end

  end
end