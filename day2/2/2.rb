# Day 2 puzzle 2: https://adventofcode.com/2021/day/2#part2

def solution
  horizontal = 0
  vertical = 0
  aim = 0

  lines = File.readlines(File.join(__dir__, 'input.txt'))
  for line in lines do
    direction, distance = line.split(' ')
    case direction
    when 'forward'
      horizontal += distance.to_i
      vertical += (distance.to_i * aim)
    when 'up'
      aim -= distance.to_i
    else
      aim += distance.to_i
    end
  end

  puts "Horizontal movement: #{horizontal}"
  puts "Vertical movement: #{vertical}"
  puts "Product movement: #{vertical*horizontal}"
end

solution
