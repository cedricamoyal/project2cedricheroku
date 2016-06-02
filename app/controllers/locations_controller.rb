# project2cedric $ rails generate controller Locations index new show edit

class LocationsController < ApplicationController


  def index
    @locations = Location.all
  end

  def show
    @location = Location.find params[:id]
  end

end

# t.text :name
# t.text :population
# t.text :area
