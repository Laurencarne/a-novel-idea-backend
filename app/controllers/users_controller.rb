class UsersController < ApplicationController

  def index
    user = User.all
    render json: user, except: [:created_at, :updated_at]
  end

  def show
      users = User.find_by(id: params[:id])
      render json: users, except: [:created_at, :updated_at]
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "User Successfully Deleted"}
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username)
  end

end
