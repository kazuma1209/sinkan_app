class StaticPagesController < ApplicationController
  def home

    @micropost = current_user.microposts.build if logged_in?
    @microposts=Micropost.limit(10)

  end

  def music
  end

  def sports
  end

  def outdoor
  end

  def volunteer
  end

  def grobal
  end

  def budo
  end

  def bunka
  end

  def other
  end
end
