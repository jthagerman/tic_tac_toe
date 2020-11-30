class Player

    attr_reader :symbol,:name

    def initialize(symbol, name)
        @symbol = symbol
        @name = name
    end

    def to_s
        puts @symbol
    end

end