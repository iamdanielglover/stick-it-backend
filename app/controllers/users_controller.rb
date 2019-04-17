class UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render json: @user
    else
      render json: {error: "User not found"}, status: 404
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      defaults= [
        {name: "Health", color: "pink", user: @user},
        {name: "Business", color: "#e0a1ef", user: @user},
        {name: "Social", color: "#d88bc6", user: @user},
        {name: "Appointments", color: "#ce32f1", user: @user}
      ]
      defaults.each {|obj| Category.create(obj)}
      render json: @user
    else
      render json: {error: "Failed to create User" }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
