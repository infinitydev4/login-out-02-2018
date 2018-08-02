class UsersController < ApplicationController
  def new
    @post = User.new
  end

  def create
    @post = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    if @post
      log_in @post
      redirect_to root_url, success: "Vous êtes inscrit"
    else
      redirect_to new_user_path, danger: "Respectez les conditions d'inscription"
    end
  end
end
