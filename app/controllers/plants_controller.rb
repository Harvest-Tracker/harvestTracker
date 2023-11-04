require "./app/services/perenual_service"

class PlantsController < ApplicationController
  def index
    @edible_outdoor_plants_list = PerenualService.new.edible_outdoor_plants_list
  end
end
