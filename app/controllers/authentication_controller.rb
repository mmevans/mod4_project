class AuthenticationController < ApplicationController
    before_action :authenticate_request
    attr_reader :current_user
    
    include ExceptionHandler

    private
    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
    # def login
    #     puts params
    #     byebug
    #     user, * = User.where({ username: params[:username]})
    #     if(user && user.authenticate(params[:password]))
    #         token = JWT.encode( { id: user.id }, 'asdljasldkfjs', 'HS256')
    #         render json: { success: true, id: user.id, token: token }
    #     else
    #         render json: { success: false, id: nil }
    #     end
    # end
    
end