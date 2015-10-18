class CardsController < ApplicationController
  def index
    render json: Card.desc(:created_at).all
  end
end
