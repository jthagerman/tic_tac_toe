class Board


    def initialize()
        
        create_game_board()


    end

    def create_game_board()
        @game_board  = Array.new
        (0..9).each do |x|
            @game_board.push(x)
        end
        
    end

    def to_s

    end
end

x = Board.new