def printCycle(cycle)
  puts cycle.join(' ')
end

File.open(ARGV[0]).each_line do |line|

  line.strip!

  if line != ''

    input = line.split
    currentCycle = []
    currentFirst = nil
    cycleDetected = false
    while input.length > 0
      currentCycle= [input[0]]
      currentFirst = input[0]
      input.delete_at 0
      # puts "original: " + input.to_s

      input.each_with_index  do |element,index|


        if element == currentFirst
          printCycle(currentCycle)
          cycleDetected = true
          break
        end
        currentCycle.push(element)

      end

      if cycleDetected
        break
      end

    end

  end

end