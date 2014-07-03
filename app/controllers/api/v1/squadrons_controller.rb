class Api::V1::SquadronsController < ApplicationController
  respond_to :json

  def index
    respond_with Squadron.all
  end

  def show
    respond_with squadron
  end

  def create
    respond_with :api, :v1, Squadron.create(squadron_params)
  end

  def update
    respond_with squadron.update(squadron_params)
  end

  def destroy
    respond_with squadron.destroy
  end

  private

  def squadron
    Squadron.find(params[:id])
  end

  def squadron_params
    params.require(:squadron).permit(:first_name, :last_name, :email, :phone, :status, :notes)
  end

end
