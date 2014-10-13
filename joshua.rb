def computermove(grid) 
    ###1.Play to win
    if (grid[0]==' ')
        if (grid[1]=='O' && grid[2]=='O') ||(grid[3]=='O' && grid[6]=='O') ||(grid[4]=='O' && grid[8]=='O')
             return 0
        end
    end
    
    if (grid[1]==' ')
        if (grid[0]=='O' && grid[2]=='O') ||(grid[4]=='O' && grid[7]=='O')
             return 1
        end
    end
    
    if (grid[2]==' ')
        if (grid[0]=='O' && grid[1]=='O') ||(grid[5]=='O' && grid[8]=='O') ||(grid[6]=='O' && grid[4]=='O')
             return 2
        end
    end
    if (grid[3]==' ')
        if (grid[0]=='O' && grid[6]=='O') ||(grid[4]=='O' && grid[5]=='O')
             return 3
        end
    end
    if (grid[4]==' ')
        if (grid[0]=='O' && grid[8]=='O') ||(grid[1]=='O' && grid[7]=='O') ||(grid[2]=='O' && grid[6]=='O')||(grid[3]=='O' && grid[5]=='O')
             return 4
        end
    end
    if (grid[5]==' ')
        if (grid[2]=='O' && grid[8]=='O') ||(grid[3]=='O' && grid[4]=='O')
             return 5
        end
    end
    if (grid[6]==' ')
        if (grid[0]=='O' && grid[3]=='O') ||(grid[7]=='O' && grid[8]=='O')||(grid[4]=='O' && grid[2]=='O')
             return 6
        end
    end
    if (grid[7]==' ')
        if (grid[1]=='O' && grid[4]=='O') ||(grid[6]=='O' && grid[8]=='O')
             return 7
        end
    end
    if (grid[8]==' ')
        if (grid[2]=='O' && grid[5]=='O') ||(grid[6]=='O' && grid[7]=='O') || (grid[0]=='O' && grid[4]=='O')
             return 8
        end
    end
  
  ###2.Play to defend
    if (grid[0]==' ')
        if (grid[1]=='X' && grid[2]=='X') ||(grid[3]=='X' && grid[6]=='X') ||(grid[4]=='X' && grid[8]=='X')
             return 0
        end
    end
    
    if (grid[1]==' ')
        if (grid[0]=='X' && grid[2]=='X') ||(grid[4]=='X' && grid[7]=='X')
             return 1
        end
    end
    
    if (grid[2]==' ')
        if (grid[0]=='X' && grid[1]=='X') ||(grid[5]=='X' && grid[8]=='X') ||(grid[6]=='X' && grid[4]=='X')
             return 2
        end
    end
    if (grid[3]==' ')
        if (grid[0]=='X' && grid[6]=='X') ||(grid[4]=='X' && grid[5]=='X')
             return 3
        end
    end
    if (grid[4]==' ')
        if (grid[0]=='X' && grid[8]=='X') ||(grid[1]=='X' && grid[7]=='X') ||(grid[2]=='X' && grid[6]=='X')||(grid[3]=='X' && grid[5]=='X')
             return 4
        end
    end
    if (grid[5]==' ')
        if (grid[2]=='X' && grid[8]=='X') ||(grid[3]=='X' && grid[4]=='X')
             return 5
        end
    end
    if (grid[6]==' ')
        if (grid[0]=='X' && grid[3]=='X') ||(grid[7]=='X' && grid[8]=='X')||(grid[4]=='X' && grid[2]=='X')
             return 6
        end
    end
    if (grid[7]==' ')
        if (grid[1]=='X' && grid[4]=='X') ||(grid[6]=='X' && grid[8]=='X')
             return 7
        end
    end
    if (grid[8]==' ')
        if (grid[2]=='X' && grid[5]=='X') ||(grid[6]=='X' && grid[7]=='X') || (grid[0]=='X' && grid[4]=='X')
             return 8
        end
    end

    ###3.Create Fork
    if (grid[0]==' ' && grid[8]=='O')
      return 0 
    end
    if (grid[2]==' ' && grid[6]=='O')
      return 2
    end
    if (grid[6]==' ' && grid[2]=='O')
      return 6
    end
    if (grid[8]==' ' && grid[0]=='O')
      return 8
    end

    ###4.Block Fork
    if (grid[2]=='X' && grid[6]=='X' && grid[1]==' ')
      return 1
    end
    if (grid[0]=='X' && grid[8]=='X' && grid[1]==' ')
      return 1
    end      
    if (grid[2]=='X' && grid[6]=='X' && grid[5]==' ')
      return 5
    end
    if (grid[0]=='X' && grid[8]=='X' && grid[5]==' ')
      return 5
    end
    if (grid[2]=='X' && grid[6]=='X' && grid[7]==' ')
      return 7
    end
    if (grid[0]=='X' && grid[8]=='X' && grid[7]==' ')
      return 7
    end
    if (grid[2]=='X' && grid[6]=='X' && grid[3]==' ')
      return 3
    end
    if (grid[0]=='X' && grid[8]=='X' && grid[3]==' ')
      return 3
    end 

    ###5.Play Center
    if grid[4]==' '   
      return 4
    end

    ###6.Play Opposite Corner
    if grid[8]=='X' && grid[0]==' '
      return 0
    end
    if grid[6]=='X' && grid[2]==' '
      return 2
    end
    if grid[2]=='X' && grid[6]==' '
      return 6
    end
    if grid[0]=='X' && grid[8]==' '
      return 8
    end

    ###7.Play Corner

    if grid[0]==' ' && grid[3]=='X' && grid[1]=='X'
      return 0
    end
    if grid[2]==' ' && grid[1]=='X' && grid[5]=='X'
      return 2
    end
    if grid[8]==' ' && grid[5]=='X' && grid[7]=='X'
      return 8
    end
    if grid[6]==' ' && grid[3]=='X' && grid[7]=='X'
      return 6
    end
    
    if grid[0]==' '
      return 0
    end
    if grid[2]==' '
      return 2
    end
    if grid[8]==' '
      return 8
    end
    if grid[6]==' '
      return 6
    end
    
    ###8.Play Side
    if grid[1]==' '
      return 1
    end
    if grid[5]==' '
      return 5
    end
    if grid[7]==' '
      return 7
    end
    if grid[3]==' '
      return 3
    end
end

def print_grid(grid)
  puts "MAP OPTIONS:" + "\t\t" + "CURRENT BOARD:"
  puts "0" +"  |  " + "1" + "  |  " + "2" + "\t\t" + "#{grid[0]}" + "  |  " + "#{grid[1]}" + "  |  " + "#{grid[2]}"
  puts "______________" + "\t\t" + "______________"
  puts "3" +"  |  " + "4" + "  |  " + "5" + "\t\t" + "#{grid[3]}" + "  |  " + "#{grid[4]}" + "  |  " + "#{grid[5]}"
  puts  "______________" + "\t\t" + "______________"
  puts "6" +"  |  " + "7" + "  |  " + "8" + "\t\t" + "#{grid[6]}" + "  |  " + "#{grid[7]}" + "  |  " + "#{grid[8]}"
end

def check_winner?(grid)
 if (grid[0]!=' ' && ((grid[0]==grid[1]) && (grid[1]==grid[2])))
    true
 elsif (grid[0]!=' ' && ((grid[0]==grid[4]) && (grid[4]==grid[8])))
    true
 elsif (grid[0]!=' ' && ((grid[0]==grid[3]) && (grid[3]==grid[6])))
    true
 elsif (grid[3]!=' ' && ((grid[3]==grid[4]) && (grid[4]==grid[5])))
    true
 elsif (grid[6]!=' ' && ((grid[6]==grid[7]) && (grid[7]==grid[8])))
    true
 elsif (grid[1]!=' ' && ((grid[1]==grid[4]) && (grid[4]==grid[7])))
    true
 elsif (grid[2]!=' ' && ((grid[2]==grid[5]) && (grid[5]==grid[8])))
    true
 elsif (grid[2]!=' ' && ((grid[2]==grid[4]) && (grid[4]==grid[6])))
    true 
 else
    false
 end
end

grid = []
counter=9 #when counter reaches 0 it is a tie

0.upto(8) {|x| grid[x] = x} #show initial grid with location values
print_grid(grid)

0.upto(8) {|x| grid[x] = ' '} #re-assign each slot to a black space
                              #keeps the alignment of the grid
game_over = false


until(game_over) do
  puts "Enter position for Player 'X' (0-8: zero is top left and 8 is bottom right)"
  value = gets

  while(value.to_i>8 || value.to_i<0 || grid[value.to_i] != ' ')
    puts "Invalid Entry/Slot Taken"
    puts "Enter position for X (0-8: zero is top left and 8 is bottom right)"
    value = gets    
  end
  
  grid[value.to_i]='X'
  counter-=1
  print_grid(grid)
  if check_winner?(grid)
    puts "Wtf??"
    break
  end

  if counter == 0
    puts "\nJOSHUA: A STRANGE GAME. THE ONLY WINNING MOVE IS NOT TO PLAY."
    break
  end

  system "clear"
  puts "..............Joshua's Turn................"
  sleep(0.2)


  value=computermove(grid)
  grid[value]='O'
 
  
  counter-=1
  print_grid(grid)
  if check_winner?(grid)
    puts "Joshua Wins!"
    break
  end
  
  if counter == 0
    puts "\nJOSHUA: A STRANGE GAME. THE ONLY WINNING MOVE IS NOT TO PLAY."
    break
  end
 
end