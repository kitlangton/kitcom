class HomePagePresenter

  attr_reader :posts

  def initialize(illustrations:, posts:)
    @illustrations = illustrations
    @posts = posts
  end

  def most_recent_image
    most_recent_illustration.image_url
  end
end
