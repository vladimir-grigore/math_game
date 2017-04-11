class Questions
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end
  
  def generate_question
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer
    answer = gets.chomp.to_i
    if is_answer_correct?(answer)
      puts "That's correct!"
      true
    else
      puts "No, no, no...and NO!"
      false
    end
  end

  def is_answer_correct?(answer)
    answer == @num1 + @num2
  end
  
end
