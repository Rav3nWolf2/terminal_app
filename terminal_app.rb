
puts "welcome to the  Quiz"
puts "test your popculture knowledge"
puts "are you ready?"
puts "< PRESS ENTER TO START >!" 
userinput = gets.chomp # first greeting 
score = 0


# how about we have different arrays like (M1-5 = Movie) questions (G1-5= gaming) (T1-5= television) (Mu1-5= Music)
M1 = ["Luke Skywalker is from what franchise?\n(a)StarTrek\n(b)StarWars\n(c)TrekWars"]
M2 = ["Who said?, you're a wizard Harry.\n(a)DoloresUmbridge\n(b)HarryPotter\n(c)Hagrid"]
M3 = ["Judy Garland starred in this 1939 movie.\n(a)TheWizardOfOZ\n(b)TheMeg\n(c)Annie"]
M4 = ["What musical had a live! version in 2016 but originally came out in 1988\n(a)grease\n(b)Hairspray\n(c)High school musical"]
M5 = ["What was the first movie to earn the title 'BLOCKBUSTER'-- hint 1975\n(a)The rocky horror picture show\n(b)Jaws\n(c)sharknado"]
T1 = ["what tv show started in 1994 and ended in 2004?\n(a)Mash\n(b)HomeAndAway\n(c)Friends"]
T2 = ["which tv family lives in springfeild?.\n(a)FamilyGuy\n(b)TheSimpsons\n(c)TheKardasians"]
T3 = ["Which Australian tv show family lives in a lighthouse\n(a)TheLights's\n(b)The House's\n(c)The Twist's"]
T4 = ["what tv show ended in 1998 after 9 seasons?\n(a)TheBachelor\n(b)Seinfeld\n(c)Cheers"]
T5 = ["who played the 10th doctor in Doctor who?\n(a)MattSmith\n(b)DavidTenant\n(c)NigelBottomTooththe3rd"]


userinput = gets.chomp
    if userinput == "b"
    puts "your score is  #{score += 1}"
    elsif userinput != "a" "c"
        puts "try again" 
    else 
        puts "incorrect"

    end

answers = {M1: "b", M2: "c", M3: "a", M4: "b", M5: "b", T1: "c", T2: "b", T3: "c", T4: "b", T5: "b"}
questions = [M1, M2, M3, M4, M5, T1, T2, T3, T4, T5,]



 
=begin
def questions
    answer = ""
    score = 0
    for question in questions
        puts questions.prompt
        answer = gets.chomp
        if answer == gets.chomp
            score += 1
        elsif answer != "a" "b" "c" 
            #puts "please try again"
        end
    end
end
=end


 #Questions.new(M1, "b"),
    #Questions.new(M2, "c")








