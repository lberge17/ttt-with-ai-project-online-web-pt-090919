module Players
  class Computer < Player
    def move(board)
      sleep 1 
      if board.cells[4] == " "
        n = "5"
      elsif board.cells[2] == " "
        n = "3"
      elsif board.cells[0] == " "
        n = 
      end
      n
    end
    
    def best_move(board)
      Game.WIN_COMBINATIONS
    end
    
  end
end