class StepsController < ApplicationController
  before_action :authenticate_user!

  def show
    @step = Step.find(params[:id])
    lesson = @step.lesson
    @steps = lesson.steps
    @program = lesson.program
    @quiz = lesson.quiz
  end
end
