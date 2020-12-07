class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @program = @question.quiz.lesson.program
  end
end
