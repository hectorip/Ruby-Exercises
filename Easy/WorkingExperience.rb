def calculateTotal(experience)
  months = {'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 'May' => 5,
            'Jun' => 6, 'Jul' => 7, 'Aug' => 8, 'Sep' => 9, 'Oct' => 10,
            'Nov' => 11, 'Dec' => 12}

  calendar = {}
  total = 0
  experience.each do |period|
    p_start,p_end =period.split('-')
    start_month, start_year = p_start.split(' ')
    end_month, end_year = p_end.split(' ')
    (start_year.to_i .. end_year.to_i).each do |year|
      if calendar[year].nil?
        calendar[year] = []
      end
        first_month = year == start_year.to_i ? months[start_month] : 1
        last_month  =  year == end_year.to_i ? months[end_month] : 12


      (first_month .. last_month).each do |month|
        unless calendar[year].include? month
          calendar[year].push month
          total +=1
        end
      end

    end
  end
  return total/12
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line !=''
    total = calculateTotal(line.split(';'))
    puts total
  end
end

