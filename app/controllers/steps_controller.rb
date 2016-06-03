class StepsController < ApplicationController

      def index
        @steps = Step.all

      end

      def show
        @step = Step.find params[:id]
      end

      def new
        @step = Step.new
        @locations = Location.all
      end

      def create
        step = Step.create step_params

        redirect_to step
      end

      def edit
        @step = Step.find params[:id]
        @locations = Location.all
      end

      def update
        step = Step.find params[:id]
        step.update step_params

        redirect_to step
      end

      def destroy
        step = Step.find params[:id]

        step.destroy
        redirect_to "/trips/#{step.trip.id}"

      end

      private

      def step_params

        params.require(:step).permit(:name, :duration, :position, :trip_id, :visit_id)
      end


end
