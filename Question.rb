class Question

  def question(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    question = "#{player.name}: What does #{num1} plus #{num2} equal?"
    answer = num1 + num2
    puts question
    try = gets.chomp
    if try.to_i == answer
      puts "#{player.name}: YES! You are correct."
    else
      player.lives -= 1 
      puts "#{player.name}: Seriously? No."
    end
  end
  
end
