class StepsController < ApplicationController
  before_action :authenticate_user!

  def show
    @step = Step.find(params[:id])
  end
end
