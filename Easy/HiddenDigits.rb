i = 0
valid_letters = Hash[('a'..'j').map {|l| [l,i]}.invert
print valid_letters
# File.open(ARGV[0]).each_line do |line|
#   line.strip!
#   if line != ''
#     result = ''
#     line.each_char do |c|
#       unless valid_letters[c].nil?
#
#       end
#     end
#
#   end
#
# end