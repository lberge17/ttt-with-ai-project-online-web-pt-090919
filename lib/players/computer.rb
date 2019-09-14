module Players
  class Computer < Player
    def move(board)
      sleep 1 
      n = "5"
      until board.valid_move?(n) do
        n = rand(1..9)
      end
      n
    end
    
  end
end