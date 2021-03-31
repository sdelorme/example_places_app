class Api::PlacesController < ApplicationController
  def index
    @places = Place.all
    render 'index.json.jb'
  end

  def create
    @place = Place.new(
      name: params[:name],
      address: params[:address],
    )
    render 'index.json.jb'
  end
end
