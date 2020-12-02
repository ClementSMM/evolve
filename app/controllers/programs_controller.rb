class ProgramsController < ApplicationController
  before_action :authenticate_user!

  def index
    programs = Program.all
    @ups = UsersProgram.where(user: current_user)
    pre_index(programs, @ups)
  end

  def show
    @program = Program.find(params[:id])
  end

  private

  def pre_index(programs, ups)
    @programs_up = []
    programs.each do |program|
      if program.users.include?(current_user)
        usersprogram = ups.find { |up| up.program_id = program.id }
       @programs_up << [program, usersprogram]
      else
        @programs_up << [program, nil]
      end
    end
    return @programs_up
  end
end
