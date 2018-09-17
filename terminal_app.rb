require_relative 'quiz'

class TerminalApp
    attr_reader :total_score
    def initialize 
        @quiz = Quiz.new 
        @total_score = 0 
    end  
    def ask_question(question_info) # asks the user for the question answers get checked
        puts question_info.question
        puts question_info.answer_choices
        userinput = gets.chomp.to_sym
        check_answer(userinput,question_info.correct_answer)
    end

    def check_answer(userinput,correct_answer) # implements score if correct answer is imputed 
        @quiz.total_score += 1 if userinput == correct_answer
    end
    def run
        puts "welcome to the FT quiz"
        puts "test your popculture knowledge"
        puts "are you ready?"
        puts "< PRESS ENTER TO START >!" 
        userinput = gets.chomp 
        random_questions = @quiz.questions.sample(@quiz.questions.length) # add or delete questions in quiz without having to change anything here
        puts "quiz.questions: #{@quiz.questions.length}"#  get a question at random 
        # random_questions.each do |question| 
        for question in random_questions do # 
            # rng = Random.new
            # index = rng.rand(0..@quiz.questions.length)
            # question_info = questions[index]
            ask_question(question)
        end
    end
    def print_results # doesnt output score 

        if @quiz.total_score > 20            
            puts "great Job!"
        elsif @quiz.total_score < 17
            puts "not good enough!"
        else 
            puts  "your score is 20! you're perfectly average!"    
        end
    end
end
terminal_app = TerminalApp.new
terminal_app.run
puts "your score is #{terminal_app.total_score}"
terminal_app.print_results




 