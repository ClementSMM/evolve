class ProgramsController < ApplicationController
  before_action :authenticate_user!

  def index
    @programs = Program.all.limit(15)
  end

  def show
    @program = Program.find(params[:id])
  end
end
