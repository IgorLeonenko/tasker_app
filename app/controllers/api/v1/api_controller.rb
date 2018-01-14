module Api
  module V1
    class ApiController < ApplicationController
      rescue_from ActiveRecord::RecordInvalid, with: :handle_record_invalid
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
      rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

      def render_ok(response = {})
        render json: response, status: :ok
      end

      def render_created(response = {})
        render json: response, status: :created
      end

      def render_no_content
        render json: {}, status: :no_content
      end

      def handle_record_invalid(exception)
        render json: { errors: exception.record.errors }, status: :bad_request
      end

      def not_found(exception)
        render json: { errors: exception.message }, status: :not_found
      end

      def user_not_authorized
        render json: { errors: "Not Authorized" }, status: :unauthorized
      end
    end
  end
end
