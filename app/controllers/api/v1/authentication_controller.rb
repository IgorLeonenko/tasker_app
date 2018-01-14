module Api
  module V1
    class AuthenticationController < ApiController
      def authenticate
        command = AuthenticateUser.call(params[:email], params[:password])
        render_ok(token: command.result) if command.success?
      end
    end
  end
end
