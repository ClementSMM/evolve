class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users_programs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  def global_stats
    ((self.level.to_f * 1000).to_f + self.xp).to_f / 100.to_f
  end

  def count_inprogress
    @nb_inprogress = UsersProgram.where(user: self, status: "in progress")
    @nb_inprogress.count
  end

  def count_done
    @nb_done = UsersProgram.where(user: self, status: "done")
    @nb_done.count
  end

  def consecutive_days
      if (self.last_sign_in_at).to_i == (self.current_sign_in_at).to_i - 1
        count_days += 1
      else
        count_days = 0
      end
      return count_days
  end
end
