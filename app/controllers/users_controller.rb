class UsersController < ApplicationController
  def show
    @user = params[:id]
  end

  def index
    @user = User.all
  end
end
