File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    list, n = line.split(";")
    n = n.to_i
    list = list.split(",")
    k = list.length / n
    n -= 1
    n_list =[]
    (1..k).each do
      (0..n).each do |j|
        n_list.push list[n-j]
        list.delete_at n-j
      end
    end
    n_list += list

    puts n_list.join(",")
  end
end