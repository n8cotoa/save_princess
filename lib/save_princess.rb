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
    while m_position[0] != p_position[0]
      if m_position[0] > p_position[0]
        m_position[0] -= 1
        output += "UP \n"
      else
        m_position[0] += 1
         output += "DOWN \n"
      end
    end
    while m_position[1] != p_position[1]
      if m_position[1] > p_position[1]
        m_position[1] -= 1
        output += "LEFT \n"
      else
        m_position[1] += 1
        output += "RIGHT \n"
      end
    end
    print output
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)