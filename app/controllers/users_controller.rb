class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = user.find(params[:id])
    user.update(user_params)
    redirect_to about_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
