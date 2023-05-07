class UsersController < ApplicationController
  before_action :set_user
  def profile
    if @user != current_user
      @user.update(views: @user.views + 1)
    end
    @posts = @user.post.all
  end

  
  private
  
  def set_user
    @user = User.find(params[:id])
  end

  
end
