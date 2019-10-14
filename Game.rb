class Game

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end
  
  def run
    current_player = @p1
    while @p1.lives > 0 && @p2.lives > 0
      q = Question.new
      q.question(current_player)
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
      current_player == @p1 ? current_player = @p2 : current_player = @p1
      puts "----- NEW TURN -----"
    end
    puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end