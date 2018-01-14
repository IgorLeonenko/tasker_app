module Api
  module V1
    class UsersController < ApiController
      def show
        authorize user
        render_ok(user)
      end

      private

      def user
        @user ||= User.find(params[:id])
      end
    end
  end
end
