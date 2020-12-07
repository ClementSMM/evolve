class FinalTestsController < ApplicationController
  def show
    @test = FinalTest.find(params[:id])
    final_test = FinalTestAnswer.where(user: current_user, final_test: @test).first
    if final_test
      @test_answer = final_test
    else
      @test_answer = FinalTestAnswer.new
    end
  end
end
