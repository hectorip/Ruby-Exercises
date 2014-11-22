# In this challenge you will be given a file where each line is a section of a race track with obstructions,
# gates and checkpoints. The goal is to find a way of passing this track, using the following rules:
# Each section contains only a single gate or a gate with a checkpoint.
# The race car can ride only through gates or checkpoints.
# You should prefer driving through checkpoint rather then a gate.
# The obstructions are represented by "#" (hash).
# The gates are represented by "_" (underscore).
# The checkpoints are represented by "C" .


def runString(line,past)
  curr =line.index('C')
  if curr.nil?
    curr = line.index('_')
  end
  curr += 1
  case
    when (curr == past or past == 0)
      c = '|'
    when curr > past
      c = '\\'
    else
      c = '/'
  end
  new_string = ''
  line.each_char.with_index do |old_char,index|
    old_char = c if index == curr - 1
    new_string += old_char
  end
  puts new_string
  return curr
end
stages = File.open(ARGV[0])

past = 0
stages.each_line do |line|
  curr = runString(line,past)
  past = curr
end