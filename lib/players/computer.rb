module Players
  class Computer < Player
    def move(board)
      sleep 1 
      n = nil
      if !!winning_move?
        n = winning_move?
      elsif !!block_opponent_win?
        n = block_opponent_win
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
    
    def winning_move?
      Game.WIN_COMBINATIONS.each do |array|
        if board.cells[array[0]] == self.token && board.cells[array[1]] == self.token
          return (array[2] + 1).to_s
        elsif board.cells[array[1]] == self.token && board.cells[array[2]] == self.token
          return (array[2] + 1).to_s
        elsif board.cells[array[0]] == self.token && board.cells[array[2]] == self.token
          return (array[2] + 1).to_s
        end
        false
      end
    end
    
    def block_opponent_win?
      Game.WIN_COMBINATIONS.each do |array|
        if board.cells[array[0]] == other_player_token && board.cells[array[1]] == other_player_token
          return (array[2] + 1).to_s
        elsif board.cells[array[1]] == other_player_token && board.cells[array[2]] == other_player_token
          return (array[2] + 1).to_s
        elsif board.cells[array[0]] == other_player_token && board.cells[array[2]] == other_player_token
          return (array[2] + 1).to_s
        end
        false
      end
    end
    
    def
    
    def other_player_token
      self.token == "X" ? "O" : "X"
    end
    
  end
end