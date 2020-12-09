class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @program = @question.quiz.lesson.program
    @quiz = @question.quiz
    @quizz_score = QuizzScore.where(user: current_user, quiz: @quiz).first
  end
end
