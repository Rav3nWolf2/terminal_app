class Question
    attr_reader :question, :answer_choices, :correct_answer
    def initialize(question, answer_choices, correct_answer)    
        @question = question                #question is a string
        @answer_choices = answer_choices    #hash of answer choices ({a:"answerA", b:"answerB"})
        @correct_answer = correct_answer    #symbol for key in answer choices
    end
end