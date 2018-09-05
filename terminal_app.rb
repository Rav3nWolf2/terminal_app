require_relative 'quiz'

class TerminalApp
    def initialize 
        @quiz = Quiz.new  
    end  
    def ask_question(question_info)
        puts question_info.question
        puts question_info.answer_choices
        userinput = gets.chomp.to_sym
        check_answer(userinput,question_info.correct_answer)
    end

    def check_answer(userinput,correct_answer)
        @quiz.total_score += 1 if userinput == correct_answer
    end
    def run
        puts "welcome to the  Quiz"
        puts "test your popculture knowledge"
        puts "are you ready?"
        puts "< PRESS ENTER TO START >!" 
        userinput = gets.chomp 
        random_questions = @quiz.questions.sample(@quiz.questions.length) # expand the questions in quiz without having to change anything here
        puts "quiz.questions: #{@quiz.questions.length}"
        # random_questions.each do |question| 
        for question in random_questions do
            # rng = Random.new
            # index = rng.rand(0..@quiz.questions.length)
            # question_info = questions[index]
            ask_question(question)
        end
    end
    def print_results

        case 
        when @quiz.total_score >5
            puts "great Job!"
        when @quiz.total_score <5
            puts "not good enough!"
        else 
            puts  "your score is 5! you're perfectly average!"    
        end
    end
end
terminal_app = TerminalApp.new
terminal_app.run
terminal_app.print_results
@quiz.total_score



 