load 'controller.rb'

puts "\n\nWelcome to Tic Tac Toe: By John Hagerman 2020\n"

puts "Player One Enter Your Name:"
p1 = gets.chomp
puts "Player Two Enter Your Name:"
p2 = gets.chomp


game = Controller.new(p1, p2)


