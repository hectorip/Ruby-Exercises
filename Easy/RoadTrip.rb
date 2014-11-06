File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    cities = line.split(';').map { |city| city.split(',')[1].to_i}
    cities.sort!

    curr = 0
    distances = []
    cities.each do |city|
      distances.push city-curr
      curr = city
    end

    puts distances.join(',')
  end
end