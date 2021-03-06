class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def songs
        songs = User.find(params[:id]).songs
        render json: songs
    end

    def show
        user = User.find(params[:id])
        render json: user
        # render json: user.to_json
    end

    def create
        user = User.create(user_params)
        render json: user
    end


    private 
    def user_params
        params.require(:user).permit(:name, :age, :bio)
    end
# TODO: CREATE, delete, show

end
