  File.open(ARGV[0]).each_line do |line|
    line.strip!
    if line != ''

      arguments = line.split(',').map {|number| number.to_i }
      c = arguments[0] / arguments[1]
      puts arguments[0] - c *  arguments[1]

    end
  end