require_relative 'quiz'
require_relative 'player'

class TerminalApp
    
    def initialize 
        # Could extend to offer different quiz categories by passing
        # a category to the Quiz initializer
        @quiz = Quiz.new 
        @players = []
    end

    def ask_question(player,question_info) # asks the user for the question answers get checked
        puts question_info.question
        puts question_info.answer_choices
        userinput = gets.chomp.to_sym
        check_answer(player,userinput,question_info.correct_answer)
    end

    def check_answer(player,userinput,correct_answer) # implements score if correct answer is imputed 
        @players[player].total_score += 1 if userinput == correct_answer
    end
    def run
        puts "welcome to the FT quiz"
        puts "test your popculture knowledge"
        puts "are you ready?"
        puts "what's your name?"
        # Could expand to ask for number of players and create a player object for each
        # player and store those in an array. For MVP, we have one player.
        name = gets.chomp
        player = Player.new(name)
        @players.push(player)
        puts "Hi #{player.name}! < PRESS ENTER TO START >!" 
        userinput = gets.chomp 
        random_questions = @quiz.questions.sample(@quiz.questions.length) # add or delete questions in quiz without having to change anything here
        puts "quiz.questions: #{@quiz.questions.length}"#  get a question at random 
        # random_questions.each do |question| 
        for question in random_questions do # 
            # rng = Random.new
            # index = rng.rand(0..@quiz.questions.length)
            # question_info = questions[index]
            # Pass the player index for the player being asked. For MVP we only have one player.
            ask_question(0,question)
        end
    end
    def print_results
        # In the MVP we only have one player but if we had more, we would print the results
        # for each player
        player = @players[0]
        score =  player.total_score
        if score == 20            
            puts "great Job! perfect score!"
        elsif score < 5
            puts "not good enough!"
        elsif score >=10 and score < 20
            puts "not bad!"
        else
            puts  "you're perfectly average!"    
        end
        puts "your score is #{score}"
    end
end
terminal_app = TerminalApp.new
terminal_app.run
terminal_app.print_results




 