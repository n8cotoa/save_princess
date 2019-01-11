#!/bin/ruby
require 'pry'
def displayPathtoPrincess(n,grid)
  two_d_grid = []
  m_position = nil
  p_position = nil
  grid.each_with_index do |grid_line, index|
    two_d_grid.push(split_grid = grid_line.split(''))
    if split_grid.include?('m')
      m_position = [index, split_grid.index('m')]
    end
    if split_grid.include?('p')
      p_position = [index, split_grid.index('p')]
    end
  end

  binding.pry
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)