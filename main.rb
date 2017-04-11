require_relative 'math_game'
require_relative 'player'
require_relative 'turn'

bender = Player.new("Bender")
zoidberg = Player.new("Zoidberg")

while bender.still_alive? && zoidberg.still_alive? do
  turn = Turn.new(bender, zoidberg)
  turn.play
end

def show_winner(player1, player2)
  winner = player1.still_alive? ? player1 : player2
  puts "#{winner.name} wins with a score of #{winner.lives}/3"
end

puts "----- GAME OVER ------"
show_winner(bender, zoidberg)

