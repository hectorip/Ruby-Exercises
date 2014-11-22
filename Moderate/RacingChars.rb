# In this challenge you will be given a file where each line is a section of a race track with obstructions,
# gates and checkpoints. The goal is to find a way of passing this track, using the following rules:
# Each section contains only a single gate or a gate with a checkpoint.
# The race car can ride only through gates or checkpoints.
# You should prefer driving through checkpoint rather then a gate.
# The obstructions are represented by "#" (hash).
# The gates are represented by "_" (underscore).
# The checkpoints are represented by "C" .

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    current = 0
    line
  end
end