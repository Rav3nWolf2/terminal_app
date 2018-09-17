require_relative "question"

class Quiz

    attr_reader :questions
    def initialize(filename='')
        @questions = []
    
        if filename.length > 0 
            #read questions from file
        else
            set_default_questions
        end
    
    end

    # For the MVP, only have one Quiz category, but could define other question
    # methods for different categories, and have category passed to the initialize
    def set_default_questions # add your questions here and it will automatically update to the terminal app 

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
        @questions << Question.new("Who sung Welcome to the jungle?", {a: "AC/DC", b: "Guns N Roses", c: "Foo fighters"}, :b )
        @questions << Question.new("Who sung these lyrics - Now we got problems, and I don't think we can solve them", {a: "Katy Perry", b: "Taylor Swift", c: "Ed Sheeran"}, :b )
        @questions << Question.new("Smells like Teen Spirt comes from which 90’s rock band? ", {a: "Nirivana", b: "Blur", c: "Red hot chilli peppers"}, :a )
        @questions << Question.new("Suga, Suga was a famous 2000’s hit by which artist", {a: "Chingy", b: "Bow wow", c: "Baby Bash"}, :c )
        @questions << Question.new("when was maroon 5’s first album released? ", {a: "2002", b: "2000", c: "2004"}, :a )
        @questions << Question.new("From which game is Dr Neo Cortex from? ", {a: "Sonic", b: "Crash Bandicoot", c: "Rayman"}, :b )
        @questions << Question.new("Professor Oak is from which famous 90’s game?", {a: "Digimon", b: "Beyblades", c: "Pokemon"}, :c )
        @questions << Question.new("Sub zero is from which 90’s fighting game? ", {a: "Mortal Combat", b: "Doom", c: "Strike Zero"}, :a )
        @questions << Question.new("Bowser, Wario and Luigi are from which famous game? ", {a: "Spyro ", b: "Mario Party", c: "Lemmings"}, :b )
        @questions << Question.new("which console came first? ", {a: "Xbox", b: "Game cube", c: "Atari"}, :c )
    end
end

