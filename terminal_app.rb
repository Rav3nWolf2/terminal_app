require 'test/unit'

class Question
attr_accessor :prompt, :answer
    def initialize (prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end
puts "welcome to the ____________ Quiz"
puts "test your popculture knowledge"
puts "are you ready?"
puts "< PRESS ENTER TO START >!" 
userinput= gets.chomp# first greeting 


# how about we have different arrays like (M1-5 = Movie) questions (G1-5= gaming) (T1-5= television) (Mu1-5= Music)
M1 = ["Luke Skywalker is from what franchise?\n(a)StarTrek\n(b)StarWars\n(c)TrekWars"]
M2 = [""]
M3 = [""]
M4 = [""]
M5 = [""]
T1 = [""]
T2 = [""]
T3 = [""]
T4 = [""]
T5 = [""]

# should we make a class of arrays? or store arrays in a hash







# define before using methods


