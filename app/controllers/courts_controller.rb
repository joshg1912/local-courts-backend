class CourtsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    courts = Court.all
    render json: courts
  end

  def create
    court = Court.new(
      name: params["name"],
      facility: params["facility"],
      fees: params["fees"],
      lights: params["lights"],
      address: params["address"],
      user_id: current_user.id,
    )
    if court.save
      render json: court
    else
      render json: { errors: court.errors.full_messages }
    end
  end
end
