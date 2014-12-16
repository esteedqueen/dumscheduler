class UsersController < ApplicationController
  layout :resolve_layout

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    # render :layout => 'users'
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Dumsoly App!"
      redirect_to schedules_url

    else
      render 'new'
    end
  end

  def setting
    @user = User.find(params[:id])    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

   def resolve_layout
    case action_name
    when "new", "create"
      "users"
    else
      "dashboard"
    end
  end

 
end
