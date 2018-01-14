module Api
  module V1
    class SignupController < ApiController
      def create
        new_user = User.create!(user_params)
        render_created(UserRepresenter.new(new_user).basic)
      end

      private

      def user_params
        params.require(:user).permit(
          :first_name, :last_name, :email, :nick_name,
          :password, :password_confirmation,
        )
      end
    end
  end
end
