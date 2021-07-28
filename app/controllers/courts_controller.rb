class CourtsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    courts = Court.all
    render json: courts
  end

  def userindex
    courts = current_user.courts
    render json: courts
  end

  def show
    court_id = params["id"]
    court = Court.find(court_id)
    render json: court
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
      render json: { errors: court.errors.full_messages }, status: 401
    end
  end

  def update
    court_id = params["id"]
    court = Court.find(court_id)

    court.name = params["name"] || court.name
    court.facility = params["facility"] || court.facility
    court.fees = params["fees"] || court.fees
    court.lights = params["lights"] || court.lights
    court.address = params["address"] || court.address

    if court.save
      render json: court
    else
      render json: { errors: court.erros.full_messages }
    end
  end

  def destroy
    court_id = params["id"]
    court = Court.find(court_id)
    court.destroy
    render json: { message: "Court Deleted" }
  end
end
