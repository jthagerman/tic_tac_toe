class Board

    def initialize()
        create_game_board()
    end

    def create_game_board()
        @game_board  = Array.new
        (1..9).each do |x|
            @game_board.push(x)
         
        end    
    end

    def make_move(plyer_symbol, pos)

        if(!@game_board[pos-1].is_a? Integer || (pos < 1) || (pos > 9))
            puts "invalid move"
        else
            @game_board[pos-1] = plyer_symbol
        end
    end

    def checkwin()

        #horiz
        if((@game_board[0] == @game_board[1]) && (@game_board[1] == @game_board[2])) ||
             ((@game_board[3] == @game_board[4]) && (@game_board[4] == @game_board[5])) ||
             ((@game_board[6] == @game_board[7]) && (@game_board[7] == @game_board[8]))
            return true
        end
        
        #verticals
        if((@game_board[0] == @game_board[3]) && (@game_board[3] == @game_board[6])) ||
            ((@game_board[1] == @game_board[4]) && (@game_board[4] == @game_board[7])) ||
            ((@game_board[2] == @game_board[5]) && (@game_board[5] == @game_board[8]))
           return true
        end

        #diagonals
        if((@game_board[0] == @game_board[4]) && (@game_board[4] == @game_board[8])) ||
            ((@game_board[6] == @game_board[4]) && (@game_board[4] == @game_board[2])) 
            return true
        end

       return false   
    end

    def checkover()
        over = true
        @game_board.map do |x|
            if(x.is_a? Integer)
                over = false
            end
        end
        return over
    end

    def to_s
        str = ""
        @game_board.map.with_index do |x,index|
            if(index==3) || (index==6)
                str +="\n-----\n"
                str += x.to_s + "|"
            
            else
                if(index==2) || (index==5) || (index==8)
                    str += x.to_s 
                else
                    str += x.to_s  + "|"
                end
            end
        end
        return str
    end

end









