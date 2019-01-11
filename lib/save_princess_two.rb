#!/bin/ruby

def getCharacterPosition(char, grid)
  grid.each_with_index do |grid_line, index|
    if grid_line.include?(char)
      return [index, grid_line.index(char)]
    end
  end
end

def nextMove(n,r,c,grid)
    m_position = [r, c]
    p_position = getCharacterPosition('p', grid)

  
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)