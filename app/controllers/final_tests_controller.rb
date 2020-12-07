class FinalTestsController < ApplicationController
  def show
    @test = FinalTest.find(params[:id])
  end
end
