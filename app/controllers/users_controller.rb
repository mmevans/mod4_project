class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: %i[login register]
    before_action :define_current_user


    def index
        users = User.all
        render json: users
    end

    def register
        user = User.create(user_params)
        if user.save
            render json: {status: 'User created successfully' }, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end

    def login
        authenticate params[:email], params[:password]
    end

    def test
        render json: {
              message: 'You have passed authentication and authorization test'
        }
    end

    def define_current_user
        if params[:id]
            @current_user = User.find(params[:id])
        else
            @current_user = User.new
        end
    end

    def current_user
        @current_user
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password_digest, :school_id, :gender, :isTeacher)
    end

    def authenticate(email, password)
        command = AuthenticateUser.call(email, password)

        if command.success?
          render json: {
            access_token: command.result,
            message: 'Login Successful'
            }
        else
            render json: { error: command.errors }, status: :unauthorized
        end
   end

end