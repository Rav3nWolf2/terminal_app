require_relative "question"

class Quiz

    attr_reader :questions
    attr_accessor :total_score
    def initialize(filename='')
        @questions = []
        @total_score = 0
    
        if filename.length > 0 
            #read questions from file
        else
            set_default_questions
        end
    
    end
    def set_default_questions
        @questions << Question.new("Luke Skywalker is from what franchise?", {a: "Star trek", b: "Star wars", c: "Trek wars"}, :b )
        @questions << Question.new("Who said?, you're a wizard Harry?", {a: "Dolores Umbride", b: "harry Potter", c: "Rubeus Hagrid"}, :c )
        @questions << Question.new("Judy Garland starred in this 1939 movie", {a: "The wizard of OZ", b: "The Meg", c: "Annie"}, :a )
        @questions << Question.new("What musical had a live! tv version in 2016 but originally came out in 1978?", {a: "grease", b: "hairspray", c: "High school musical"}, :a )
        @questions << Question.new("What was the first movie to earn the title 'BLOCKBUSTER?'--HINT 1975", {a:"the rocky horror picture show", b:"Jaws", c:"sharknado"}, :b )
        @questions << Question.new("what Tv show started in 1994 and ended in 2004?", {a: "Friends", b: "Home and Away", c: "Mash"}, :a )
        @questions << Question.new("Which tv family lives in Springfield?", {a: "Family Guy", b: "The Simpsons", c: "The Kardashians"}, :b )
        @questions << Question.new("Which Australian tv family lives in a light house?", {a: "The Lights's", b:"The House's", c: "The Twist's"}, :c )
        @questions << Question.new("What tv show ended in 1998 after 9 seasons?", {a: "Seinfeld", b: "The Bachelor", c: "Cheers"}, :a )
        @questions << Question.new("who played the 10th doctor in Doctor who?", {a: "Matt Smith", b: "Nigel Bottom tooth the3rd", c: "David tenant"}, :c )
    end
end

