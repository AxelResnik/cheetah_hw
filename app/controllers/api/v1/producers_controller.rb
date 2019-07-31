class Api::V1::ProducersController < Api::V1::BaseController
  include Pagy::Backend

  def index
    @pagy, @producers = pagy(Producer.all.order(:name), items: 50)
  end
end