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
    i = 0
    move = ''
    until i == 2
    while m_position[i] != p_position[i]
      if m_position[i] > p_position[i]
        m_position[i] -= 1
        case i 
        when 0
            move = "UP\n"
            break
        when 1
            move = "LEFT\n"
            break
        end
      else
        m_position[i] += 1
        case i
        when 0
            move = "DOWN\n"
            break
        when 1
            move = "RIGHT\n"
            break
        end
      end
    end
    i += 1
  end
  print move
  return move
end