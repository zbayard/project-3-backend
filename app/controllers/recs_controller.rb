class RecsController < ApplicationController

def index
    recs = Rec.all
    render json: recs
end

def show
    rec = Rec.find(params[:id])
    render json: rec
end

def destroy
    dead_rec = Rec.destroy(params[:id])
    render json: dead_rec
end

def create
  new_rec =  Rec.create(rec_params)
  render json: new_rec
end

private

def rec_params
    params.permit(:recer_id, :recee_id, :song)
end

end
