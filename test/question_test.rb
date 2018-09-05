require "test/unit"
require_relative "../question"

class QuestionTest < Test::Unit::TestCase

    def test_question_attr
        question = Question.new("the question", {a:"answerA", b: "answerB", c: "answerC"}, :a)
        assert_equal("the question", question.question)
    
    end
    
end
