require "./app/services/perenual_service"

class PlantsController < ApplicationController
  def index
    @zone = HardinessZone.where(zipcode: params["zipcode"]).first
  end

  def update
    @zone = HardinessZone.where(zipcode: params["zipcode"]).first
    respond_to do |format|
      format.turbo_stream
    end
  end
end
