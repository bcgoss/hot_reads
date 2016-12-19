class HomeController < ApplicationController
  def index
    # @links = Link.
    byebug
    ActiveRecord::Base.connection.execute(sql)

  end
end
