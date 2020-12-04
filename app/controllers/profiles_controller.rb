class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def dashboard
    @user = current_user
    programs = Program.all
    @inprogress = UsersProgram.where(user: current_user, status: "in progress").limit(3)
    pre_dash(programs)
  end

  private

  def pre_dash(programs)
    @start_programs = []
    programs.each do |program|
      @start_programs << program unless program.users.include?(current_user) || current_user.level < program.unlock_program
    end
    return @start_programs.first(3)
  end
end
