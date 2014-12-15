class VisitorsController < ApplicationController
  require 'home_page_presenter'

  def index
    Post.all

    @presenter = HomePagePresenter.new(illustrations: Illustration.all, posts: Post.all)
  end
end
