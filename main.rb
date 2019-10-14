require "./Player"
require "./Question"
require "./Game"

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

game1 = Game.new(p1, p2)
game1.run