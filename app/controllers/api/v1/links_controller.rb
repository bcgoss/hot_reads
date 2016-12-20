class Api::V1::LinksController < ApiController
  def create
    @link = Link.new(link_params)
    if @link.save
      render json: {message: 'created'}, status: 201
    else
      render json: {error: @links.errors.full_messages.join(', ')}, status: 500
    end
  end

  def index
    render json: Link.top_ten
  end
  private
    def link_params
      params.require(:link).permit(:url)
    end
end
