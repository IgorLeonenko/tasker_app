module Api
  module V1
    class ListsController < ApiController
      def index
        lists = current_user.lists
        render_ok(ListsRepresenter.new(lists).basic)
      end

      def create
        new_list = current_user.lists.create!(list_params)
        render_created(ListRepresenter.new(new_list).basic)
      end

      def update

      end

      def destroy

      end

      private

      def list
        @list = List.find(params[:id])
      end

      def list_params
        params.require(:list).permit(:name, :description)
      end
    end
  end
end
