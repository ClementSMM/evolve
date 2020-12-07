class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def dashboard
    @user = current_user
    programs = Program.all
    @inprogress = UsersProgram.where(user: current_user, status: "in progress").first(3)
    pre_dash(programs)
  end

  private

  def pre_dash(programs)
    @start_programs = []
    programs.each do |program|
      @start_programs << program unless program.users.include?(current_user) || current_user.level < program.unlock_program
    end
    @start_programs = @start_programs.first(3)
    return @start_programs
  end
end

def global_stats
((current_user.level.to_f * 1000).to_f + current_user.xp).to_f / 100.to_f
end

def count_inprogress
@nb_inprogress = UsersProgram.where(user: current_user, status: "in progress")
@nb_inprogress.count
end

def count_done
@nb_done = UsersProgram.where(user: current_user, status: "done")
@nb_done.count
end

def consecutive_days
@count_days = 0
if (current_user.last_sign_in_at).to_i == (current_user.current_sign_in_at).to_i - 1
  @count_days += 1
else
  @count_days = 0
end
end
