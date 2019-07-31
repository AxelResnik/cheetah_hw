class Api::V1::ProducersController < Api::V1::BaseController
  include Pagy::Backend

  def index
  	# use Pagy gem for the pagination
  	# https://ddnexus.github.io/pagy/how-to.html
    @pagy, @producers = pagy(Producer.all.order(:name), items: 50)
  end
end