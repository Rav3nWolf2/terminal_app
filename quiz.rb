class Quiz

    attr_reader :questions
def initialize(filename='')
    @questions = questions
    if filename.length > 0
        #read questions from file
    else
        set_default_questions
    end
    
end
def set_default_questions
  

    
    
   
    

    T5 = ["who played the 10th doctor in Doctor who?\n(a)MattSmith\n(b)DavidTenant\n(c)NigelBottomTooththe3rd"]

    @questions << Question.new("Luke Skywalker is from what franchise?", {a: "Star trek", b: "Star wars", c: "Trek wars"}, :b )
    @questions << Question.new("Who said?, you're a wizard Harry?", {a: "Dolores Umbride", b: "harry Potter", c: "Hagrid"}, :c )
    @questions << Question.new("Judy Garland starred in this 1939 movie", {a: "The wizard of OZ", b: "The Meg", c: "Annie"}, :a )
    @questions << Question.new("What musical had a live!  version in 2016 but originally came out in 1988?", {a: "grease", :b "hairspray", :c "High school musical"}, :b )
    @questions << Question.new("What was the first movie to earn the title 'BLOCKBUSTER?'--HINT 1975", {a:"the rocky horror picture show", b:"Jaws", c:"sharknado"}, :b )
    @questions << Question.new("what Tv show started in 1994 and ended in 2004?", {a: "Mash", b: "Home and Away", c: "Friends"}, :c )
    @questions << Question.new("Which tv family lives in Springfield?", {a: "Family Guy", b: "The Simpsons", c: "The Kardashians"}, :b )
    @questions << Question.new("Which Australian tv family lives in a light house?", {a: "The Lights's", b:"The House's", c: "The Twist's"}, :c )
    @questions << Question.new("What tv show ended in 1998 after 9 seasons?", {a: "The Bachelor", b: "Seinfeld", c: "Cheers"}, :b )
    @questions << Question.new("who played the 10th doctor in Doctor who?", {a: "Matt Smith", b: "Nigel Bottom tooth the3rd", c: "David tenant"}, :c )





    #@answers = {M1: "b", M2: "c", M3: "a", M4: "b", M5: "b", T1: "c", T2: "b", T3: "c", T4: "b", T5: "b"}
    #@questions = {M1: M1, M2, M3, M4, M5, T1, T2, T3, T4, T5,}
end
end
