
File.open(ARGV[0]).each_line do |line|

	line.strip!
	if line != ''
		arr = line.split
		while arr.length > 0
			print arr.pop
			print " " if arr.length > 0
		end
		print "\n"
	end


end