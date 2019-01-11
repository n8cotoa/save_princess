#!/bin/ruby
def getCharacterPosition(char, grid)
  grid.each_with_index do |grid_line, index|
    if grid_line.include?(char)
      return [index, grid_line.index(char)]
    end
  end
end

def displayPathtoPrincess(n,grid)
  m_position = getCharacterPosition('m', grid)
  p_position = getCharacterPosition('p', grid)
  output = ""
  i = 0
  until i == 2
    while m_position[i] != p_position[i]
      if m_position[i] > p_position[i]
        m_position[i] -= 1
        case i 
        when 0
          output += "UP\n"
        when 1
          output += "LEFT\n"
        end
      else
        m_position[i] += 1
        case i
        when 0
          output += "DOWN\n"
        when 1
          output += "RIGHT\n"
        end
      end
    end
    i += 1
  end
  return output
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

print displayPathtoPrincess(m,grid)