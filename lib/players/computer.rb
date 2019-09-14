module Players
  class Computer < Player
    def move(board)
      sleep 1 
      n = nil
      if 
      elsif board.cells[4] == " "
        n = "5"
      elsif board.cells[2] == " "
        n = "3"
      elsif board.cells[0] == " "
        n = "1"
      elsif board.cells[8] == " "
        n = "9"
      elsif board.cells[6] == " "
        n = "7"
      else
        until board.valid_move?(n) do
          n = rand(1, 9)
        end
      end
      n
    end
    
    def other_player_token
      self.token == "X" ? "O" : "X"
    end
    
  end
end