class Game
  attr_accessor :board, :player_1, :player_2
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]
    
    def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
      @player_1 = player_1
      @player_2 = player_2
      @board = board
    end
    
    def current_player
      if @board.turn_count.even?
        @player_1
      elsif @board.turn_count.odd?
        @player_2
      end
    end
    
    def won?
      WIN_COMBINATIONS.each do |array|
        if @board.cells[array[0]] == @board.cells[array[1]] && @board.cells[array[1]] == @board.cells[array[2]] && @board.cells[array[0]] != " "
          return array
        end
      end
      false
    end
    
    def draw?
      (!won? && @board.full?) ? true : false
    end
    
    def over?
      draw? || won?
    end
    
    def winner
      won? ? @board.cells[won?[0]] : nil
    end
    
    def turn
      input = ""
      until @board.valid_move?(input)
        input = current_player.move(@board)
      end
      @board.update(input, current_player)
    end
    
    def play
      
    end
    
end