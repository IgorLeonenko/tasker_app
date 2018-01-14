module Api
  module V1
    class ListsController < ApiController
      def index
        lists = current_user.lists
        render_ok(ListsRepresenter.new(lists).basic)
      end

      def update

      end

      def destroy

      end

      private

      def list
        @list = List.find(params[:id])
      end
    end
  end
end
