class VisitsController < ApplicationController

    def index
      @visits = Visit.all

    end

    def show
      @visit = Visit.find params[:id]
    end

    def new
      @visit = Visit.new
    end

    def create
      visit = Visit.create visit_params

      redirect_to visit
    end

    def edit
      @visit = Visit.find params[:id]
    end

    def update
      visit = Visit.find params[:id]
      visit.update visit_params

      redirect_to visit
    end

    def destroy
      visit = Visit.find params[:id]
      visit.destroy

      redirect_to visits_path
    end

    private

    def visit_params
      params.require(:visit).permit(:name, :country_id, :theme_id, :description, :image, :visitLatitude, :visitLongitude)
    end

end
