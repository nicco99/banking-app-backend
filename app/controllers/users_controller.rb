class UsersController < ApplicationController
    skip_before_action :authorize, only:[:create]

    def create
    user = User.create(user_params)
    render json: user, status: :created
    end

    def show
    user = User.find(params[:id])
    render json: user, status: :created
    end
    def destroy
    user = user.find(params[:id])
    user.destroy
    render json: user, status: :ok
    end

    private
    def user_params
    params.permit(:first_name,:last_name,:email,:profile_image,:password,:password_confirmation)
    end

end
