#!/bin/ruby
require 'pry'
def displayPathtoPrincess(n,grid)
  m_position = []
  p_position = []
  grid.each_with_index do |grid_line, index|
    if grid_line.include?('m')
      m_position = [index, grid_line.index('m')]
    end
    if grid_line.include?('p')
      p_position = [index, grid_line.index('p')]
    end
  end
  output = ""

    i = 0
    until i == 2
      while m_position[i] != p_position[i]
        if m_position[i] > p_position[i]
          m_position[i] -= 1
          case i 
          when 0
            output += "UP \n"
          when 1
            output += "LEFT \n"
          end
        else
          m_position[i] += 1
          case i
          when 0
            output += "DOWN \n"
          when 1
            output += "RIGHT \n"
          end
        end
      end
      i += 1
    end
    print output
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)