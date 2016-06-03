class CountriesController < ApplicationController


  def index
    @countries = Country.all
    @locations = Location.all

  end

  def show
    @country = Country.find params[:id]
  end


  def new
    if @current_user && @current_user.admin
    @country = Country.new
    end
  end

  def create
      if @current_user && @current_user.admin
    country = Country.create country_params

    redirect_to country
     end
  end

  def edit
    if @current_user && @current_user.admin
    @country = Country.find params[:id]
    end
  end

  def update
    if @current_user && @current_user.admin
    country = Country.find params[:id]
    country.update country_params

    redirect_to country
    end
  end

  def destroy
    if @current_user && @current_user.admin
    country = Country.find params[:id]
    country.destroy

    redirect_to countries_path
    end
  end

  private

  def country_params
    params.require(:country).permit(:name, :location_id, :capitalCity, :currency, :population, :area, :popDensity, :flag, :capitalLatitude, :capitalLongitude, :language)
  end


end

# t.text    "name"
# t.integer "location_id"
# t.text    "capitalCity"
# t.text    "currency"
# t.text    "population"
# t.text    "area"
# t.text    "popDensity"
# t.text    "flag"
# t.text    "visa"
# t.text    "capitalLatitude"
# t.text    "capitalLongitude"
# t.text    "language"
