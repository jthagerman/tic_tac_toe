class Controller 

    load 'board.rb'
    load 'player.rb'

    def initialize()

        @game = Board.new()
        @p1 = Player.new("X")
        @p2 = Player.new("Y")

        game()


    end

    def game()
        while(!@game.checkwin() || @game.checkover)

            puts "x"
            break
           
        end
        
    end

end

x = Controller.new()