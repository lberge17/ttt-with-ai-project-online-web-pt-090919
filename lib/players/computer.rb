module Players
  class Computer < Player
    def move(board)
      sleep 1 
      if board.cells[4] == " "
      n = "5"
      until board.valid_move?(n) do
        n = rand(1..9)
      end
      n
    end
    
    def best_move(board)
      Game.WIN_COMBINATIONS
    end
    
  end
end