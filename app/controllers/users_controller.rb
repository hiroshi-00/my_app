class UsersController < ApplicationController
  
  
  # include ApplicationHelper
  
  def index 
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    # @user = User.new(user_params)
    logger.debug("================= user_type = #{params[:user][:user_type]}")
    if User.create(user_params)
      redirect_to root_path
    else
      render :new, notice: "作成できませんでした。"
    end
  end
  
  def edit 
    @user = User.find_by(user_id: current_user.id)
  end
  
  def update
    @user = User.find(user_id: current_user.id)
    @user.paid_user!
    @user.update(user_params)
    redirect_to root_path
  end
  
  private 
    def user_params
      params.require(:user).permit(:user_id, :user_name, :email, :password, :user_type).merge(:user_type => 2)
    end
end


