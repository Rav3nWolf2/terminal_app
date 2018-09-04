
puts "welcome to the  Quiz"
puts "test your popculture knowledge"
puts "are you ready?"
puts "< PRESS ENTER TO START >!" 
userinput = gets.chomp # first greeting 
score = 0
# how about we have different arrays like (M1-5 = Movie) questions (G1-5= gaming) (T1-5= television) (Mu1-5= Music)
M1 = ["Luke Skywalker is from what franchise?\n(a)StarTrek\n(b)StarWars\n(c)TrekWars"]
puts M1 
userinput = gets.chomp
    if userinput == "b"
    puts "your score is  #{score += 1}"
    elsif userinput == "a" "c"
        puts "incorrect"
    else 
        puts "try again" 
        
    end# this is just one question we need a simpler code
    
M2 = ["who said -- You're a wizard Harry, in Harry Potter and the philosophers stone\n(a)Dolores Umbridge\n(b)Harry Potter\n(c)Hagrid"]


=begin
def (questions)
    answer = ""
    score = 0
    for question in questions
        puts questions.prompt
        answer = gets.chomp()
        if answer == gets.chomp()
            score += 1
        #elsif answer != "a" "b" "c"
            #puts "please try again"
        end
    end
end
=end


 #Questions.new(M1, "b"),
    #Questions.new(M2, "c")








