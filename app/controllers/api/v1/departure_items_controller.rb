module Api::V1
  class DepartureItemsController < ApplicationController
    before_action :set_departure_item, only: [:show, :update, :destroy]

    # GET /departure_items
    def index
      @departure_items = DepartureItem.order('updated_at DESC')

      render json: @departure_items
    end

    # GET /departure_items/1
    def show
      render json: @departure_item
    end

    # POST /departure_items
    def create
      @departure_item = DepartureItem.new(departure_item_params)

      if @departure_item.save
        render json: @departure_item, status: :created
      else
        render json: @departure_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /departure_items/1
    def update
      if @departure_item.update(departure_item_params)
        render json: @departure_item
      else
        render json: @departure_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /departure_items/1
    def destroy
      @departure_item.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_departure_item
        @departure_item = DepartureItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def departure_item_params
        params.require(:departure_item).permit(:title, :description)
      end
  end
end
