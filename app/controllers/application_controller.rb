class ApplicationController < ActionController::API
    before_action :authenticate_request, except: [:index, :create, :update, :destroy, :edit, :show, :update2, :delete_pending]
    attr_reader :current_user
    
    include ExceptionHandler
    require './app/auth/authorize_api_request'


    private
    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
end
