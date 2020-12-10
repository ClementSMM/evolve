class QuizzScoresController < ApplicationController

  def create
    @quizz_score = QuizzScore.new
    @quizz_score.user = current_user
    @quizz_score.quiz_id = params[:quiz_id]
    @quiz = Quiz.find(params[:quiz_id])
    if QuizzScore.where(user: current_user, quiz: @quiz).first.present?
      redirect_to question_path(@quiz.question_ids[0])
    else
      @quizz_score.save
      redirect_to question_path(@quiz.question_ids[0])
    end
  end

  def show
    @quizz_score = QuizzScore.find(params[:id])
    @program = @quizz_score.quiz.lesson.program
    @final_test = @program.final_test
    @quiz = @quizz_score.quiz

    if @quizz_score.number_correct_answer < 5
      @success = false
    else
      @success = true
    end
  end

  def update
    @quizz_score = QuizzScore.find(params[:id])
    @quizz_score.number_correct_answer += 1
    if @quizz_score.save
      if params[:index_question] == '4'
        redirect_to quizz_score_path(@quizz_score)
      else
        redirect_to question_path(@quizz_score.quiz.question_ids[params[:index_question].to_i + 1])
      end
    end
  end

  def reset_score
    @quizz_score = QuizzScore.find(params[:id])
    @quizz_score.number_correct_answer = 0
    raise
    if @quizz_score.save
      redirect_to question_path(@quizz_score.quiz.questions.first)
    end
  end

  def quizz_score_params
    params.require(:quizz_score).permit()
  end
end
