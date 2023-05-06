class PagesController < ApplicationController
  def home
    @latest_posts = Post.all.order(created_at: :desc).limit(2)
  end

  def about
  end
end
