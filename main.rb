require_relative 'player'
require_relative 'turn'

bender = Math_game::Player.new("Bender")
zoidberg = Math_game::Player.new("Zoidberg")

while bender.still_alive? && zoidberg.still_alive? do
  turn = Math_game::Turn.new(bender, zoidberg)
  turn.play
end

def show_winner(player1, player2)
  winner = player1.still_alive? ? player1 : player2
  puts "#{winner.name} wins with a score of #{winner.lives}/3"
end

puts "----- GAME OVER ------"
show_winner(bender, zoidberg)

