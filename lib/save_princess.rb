#!/bin/ruby

def displayPathtoPrincess(n,grid)
  return "Working"
end

m = gets.to_i
print m

grid = Array.new(m)
print grid
(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)