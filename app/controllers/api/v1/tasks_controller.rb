module Api
  module V1
    class TasksController < ApiController
      def index
        authorize Task
        tasks = Task.all
        render_ok(TasksRepresenter.new(tasks).basic)
      end

      def show
        authorize task
        render_ok(TaskRepresenter.new(task).basic)
      end

      def create
        new_task = list.tasks.create!(task_params)
        render_created(TaskRepresenter.new(new_task).basic)
      end

      def update
        authorize task
      end

      def destroy
        authorize task
      end

      private

      def list
        @list ||= List.find(params[:list_id])
      end

      def task
        @task ||= Task.find(params[:id])
      end

      def task_params
        params.require(:task).permit(:description)
      end
    end
  end
end
