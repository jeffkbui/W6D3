class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(create_helper)
    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create_helper
    params.require(:user).permit(:name, :email)
  end

  def update
    user = User.find(params[:id])
    user.update(create_helper)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.delete
  end
end
