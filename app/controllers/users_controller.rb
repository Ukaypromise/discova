class UsersController < ApplicationController
  before_action :set_user
  def profile
    @user.update(views: @user.views + 1) if @user != current_user
    @posts = @user.post.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
