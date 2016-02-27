class SpeciesController < ApplicationController
  def index
  end

  def create
    @species = Species.new
    @species.name = params[:name]
    @species.save
    redirect_to '/'
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
