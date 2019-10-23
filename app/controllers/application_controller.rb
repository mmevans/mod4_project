class ApplicationController < ActionController::API
    before_action :authenticate_request, except: [:index, :create, :update, :destroy, :edit]
    attr_reader :current_user
    
    include ExceptionHandler
    require './app/auth/authorize_api_request'


    private
    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
    # rescue_from Exception, :with => :render_error_response

    # def render_error_response(error)
    #     render json: error
    # end

    # def current_user
    #     begin
    #         method, token = request.headers[:Authorization].split(' ')
    #         if method === 'Bearer'
    #             payload, header = JWT.decode(token, 'asdljasldkfjs')
    #             User.find(payload["id"])
    #         end
    #     rescue
    #         raise Exception.new('You must be logged in to make this request')
    #     end
    # end
end
