# project2cedric $ rails generate controller Trips index new show edit

class TripsController < ApplicationController

    def index
      @trips = Trip.all
      @users = User.all
    end

    def show
      @trip = Trip.find params[:id]
    end

    def new
      @trip = Trip.new
    end

    def create
      trip = Trip.create trip_params

      redirect_to new_step_path
    end

    def edit
      @trip = Trip.find params[:id]
    end

    def update
      trip = Trip.find params[:id]
      trip.update trip_params

      redirect_to trip
    end

    def destroy
      trip = Trip.find params[:id]
      trip.destroy

      redirect_to trips_path
    end

    private

    def trip_params
      params.require(:trip).permit(:name, :description, :startDate, :user_id, :image)
    end

end

# t.text :name
# t.text :description
# t.date :startDate
# t.integer :user_id
