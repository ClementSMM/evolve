class UsersProgramsController < ApplicationController
  def create
    up = UsersProgram.new(status: "in progress")
    up.user = current_user
    program = Program.find(params[:program_id])
    up.program = program
    if up.save
      redirect_to program_path(program)
    end
  end
end
