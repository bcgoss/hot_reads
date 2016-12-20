class HomeController < ApplicationController
  def index
    @links = Link.top_ten
  end
end
