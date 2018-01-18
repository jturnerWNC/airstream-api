module Api::V1
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :update, :destroy]

    # GET /tasks
    def index
      @tasks = Task.order('updated_at DESC')

      render json: @tasks
    end

    # GET /tasks/1
    def show
      render json: @tasks
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)

      if @task.save
        render json: @task, status: :created
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /departure_items/1
    def update
      if @task.update(departure_item_params)
        render json: @task
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    # DELETE /departure_items/1
    def destroy
      @task.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_departure_item
        @task = Task.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:title, :description)
      end
  end
end
