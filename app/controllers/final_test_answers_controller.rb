class FinalTestAnswersController < ApplicationController
  def create
    test_answer = FinalTestAnswer.new(set_params)
    test_answer.user = current_user
    final_test = FinalTest.find(params[:final_test_id])
    test_answer.final_test = final_test
    if test_answer.save
      update_up(final_test)
      redirect_to root_path
    else
      render final_test_path(final_test)
    end
  end

  def update
    test_answer = FinalTestAnswer.find(params[:id])
    test_answer.update(set_params)
    if test_answer.save
      redirect_to root_path
    else
      render final_test_path(final_test)
    end
  end

  private

  def update_up(final_test)
    program = final_test.program
    up = UsersProgram.where(user: current_user, program: program).first
    up.final_test_status = "en attente"
    up.save
  end

  def set_params
    params.require(:final_test_answer).permit(:file)
  end
end
