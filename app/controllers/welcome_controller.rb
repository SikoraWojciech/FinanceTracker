class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if current_user
      redirect_to my_portfolio_path
    end
  end
end
