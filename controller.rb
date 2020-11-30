class Controller 

    load 'board.rb'
    load 'player.rb'

    def initialize(one="Player One",two= "Player Two")

        @game = Board.new()
        @p1 = Player.new("X", one)
        @p2 = Player.new("O", two)

        game()

    end

    def game()
       
        while(!@game.checkwin() || @game.checkover)
            puts @game
            getMove(@p1)

            if(@game.checkwin())
                puts @game
                puts "#{@p1.name} wins!"
                break
            
            elsif(@game.checkover)
                puts @game
                puts "Scratch Game"
                break
            else
                puts @game
                getMove(@p2)
                if(@game.checkwin())
                    puts @game
                    puts "#{@p2.name} wins!"
                end
                if(@game.checkover)
                    puts @game
                    puts "Scratch Game"
                end
            end

        end 
    end

    def getMove(player)
       
        puts "\n\n#{player.name} Make a Move"
        move = gets.chomp

        begin
            move = Integer(move)
            if(move > 9) || (move < 0)
                raise "error"
            end
        rescue => error
            puts "invalid entry"
            getMove(player)
        else
           @game.make_move(player.symbol, move)
        end   
    end

end

