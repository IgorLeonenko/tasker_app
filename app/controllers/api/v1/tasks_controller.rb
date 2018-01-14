module Api
  module V1
    class TasksController < ApiController
      def index
        authorize Task
        tasks = Task.all
      end

      def show
        authorize task
      end

      def create

      end

      def update
        authorize task
      end

      def destroy
        authorize task
      end

      private

      def task
        @task = Task.find(params[:id])
      end
    end
  end
end
