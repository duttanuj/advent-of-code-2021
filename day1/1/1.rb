# Day 1 puzzle 1: https://adventofcode.com/2021/day/1

def solution
  count = 0
  lines = File.readlines(File.join(__dir__, 'input.txt'))
  for i in 1..lines.size do
    count+=1 if lines[i].to_i > lines[i-1].to_i
  end
  puts "Increasing depths: #{count}"
end

solution
