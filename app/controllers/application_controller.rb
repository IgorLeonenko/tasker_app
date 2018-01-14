class ApplicationController < ActionController::API
  include Pundit

  private

  def current_user
    @current_user ||= AuthorizeApiRequest.call(request.headers).result
  end
end
