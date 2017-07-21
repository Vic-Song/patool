class HomeController < ApplicationController
	before_action :is_admin?, only: [:admin]
	before_action :is_user?,only:[:userpanel]
  
  def index
  	@surveys = Survey.all
  	@questions = Question.all
  	@answers = Answer.all
  end

  def admin
  	@surveys = Survey.all
  	@questions = Question.all
  	@answers = Answer.all
	@users = User.all
	@user = User.new(email:params[:email],password:params[:password])
  end

    def userpanel

  end

end
