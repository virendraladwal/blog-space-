class UsersController < ApplicationController

  before_action :load_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: 'User Created Successfully.'
    else
      render :new
    end
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: 'User has been updated Successfully.'
    else
      render :edit
    end
  end

  private def user_params
    params.require(:user).permit(:name)
  end

  private def load_user
    @user = User.find_by(id: params[:id])
    unless @user
      redirect_to users_path, notice: 'User not found.'
    end
  end

end