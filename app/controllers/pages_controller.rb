class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      redirect_to profiles_dashboard_path
    end
  end
end
