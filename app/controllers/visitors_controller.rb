class VisitorsController < ApplicationController
  require 'home_page_presenter'

  def index
    @posts = Post.all
    @illustrations = Illustration.all
  end

  def about

  end

end
