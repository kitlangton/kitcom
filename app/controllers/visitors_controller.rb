class VisitorsController < ApplicationController
  def index
    @illustrations = Illustration.all
    @posts = Post.all
  end
end
