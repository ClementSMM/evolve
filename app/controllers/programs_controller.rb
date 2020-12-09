class ProgramsController < ApplicationController
  before_action :authenticate_user!

  def index
    programs = Program.all
    @ups = UsersProgram.where(user: current_user)
    pre_index(programs, @ups)
  end

  def show
    @program = Program.find(params[:id])
    @lessons = @program.lessons
    @reviews = @program.reviews.last(3)
    if current_user.consecutive_days?
      current_user.update(days_streak: current_user.days_streak + 1)
    elsif current_user.more?
    else
      current_user.update(days_streak: 0, last_sign_in_at: Date.today)
    end
  end

  private

  def pre_index(programs, ups)
    @programs_up = []
    programs.each do |program|
      if program.users.include?(current_user)
        usersprogram = ups.find { |up| up.program_id == program.id }
        @programs_up << [program, usersprogram]
      else
        @programs_up << [program, nil]
      end
    end
    return @programs_up
  end
end
