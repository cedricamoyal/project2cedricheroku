class VisitsController < ApplicationController

    def index
      @visits = Visit.all
      @countries = Country.all
      @locations = Location.all

    end

    def show
      @visit = Visit.find params[:id]
    end

    def new
      if @current_user && @current_user.admin
      @visit = Visit.new
      end
    end

    def create
      if @current_user && @current_user.admin
      visit = Visit.create visit_params

      redirect_to visit
      end
    end

    def edit
      if @current_user && @current_user.admin
      @visit = Visit.find params[:id]
      end
    end

    def update
      if @current_user && @current_user.admin
      visit = Visit.find params[:id]
      visit.update visit_params

      redirect_to visit
      end
    end

    def destroy
      if @current_user && @current_user.admin
      visit = Visit.find params[:id]
      visit.destroy

      redirect_to visits_path
      end
    end

    private

    def visit_params
      params.require(:visit).permit(:name, :country_id, :theme_id, :description, :image, :visitLatitude, :visitLongitude)
    end

end
