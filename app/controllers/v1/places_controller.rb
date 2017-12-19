class V1::PlacesController < ApplicationController
  
  def index
    places = Place.all
    render json: places.as_json
  end
  
  def create
    place = Place.new(
      name: params[:name],
      address: params[:address]
    )
    if place.save
      render json: place.as_json
    else
      render json: {errors: place.errors.full_messages}, status: :bad_request
    end
  end

end
