# Day 1 puzzle 2: https://adventofcode.com/2021/day/1#part2

def solution
  count = 0
  lines = File.readlines(File.join(__dir__, 'input.txt'))
  for i in 3..lines.size do
    count+=1 if lines[i].to_i > lines[i-3].to_i
  end
  puts "Increasing depths: #{count}"
end

solution
