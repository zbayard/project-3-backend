class OwnershipsController < ApplicationController

    def create
        @ownership = Ownership.create(ownership_params)
        render json: @ownership
    end

    private

    def ownership_params
        params.permit(:song_id, :user_id)
    end

    
    # !STRETCH GOAL- UPDATE AN OWNERSHIP
end
 