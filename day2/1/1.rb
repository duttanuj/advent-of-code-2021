# Day 2 puzzle 1: https://adventofcode.com/2021/day/2

def solution
  horizontal = 0
  vertical = 0

  lines = File.readlines(File.join(__dir__, 'input.txt'))
  for line in lines do
    direction, distance = line.split(' ')
    case direction
    when 'forward'
      horizontal += distance.to_i
    when 'up'
      vertical -= distance.to_i
    else
      vertical += distance.to_i
    end
  end

  puts "Horizontal movement: #{horizontal}"
  puts "Vertical movement: #{vertical}"
  puts "Product movement: #{vertical*horizontal}"
end

solution
