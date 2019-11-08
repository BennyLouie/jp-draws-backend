class UsersController < ApplicationController

    def index
       allUsers = User.all
       render json: allUsers 
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end
end
