class PagesController < ApplicationController
  def home
    @latest_posts = Post.all.order(created_at: :desc).limit(4)
  end

  def about; end
end
