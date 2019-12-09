class ConductorescarrosController < ApplicationController

  def index
    @conductorescarros = Conductorcarro.all
  end

  def new
    @conductorcarro = Conductorcarro.new
  end

  def edit
  end

  def show
  end

  def create
    @conductorcarro = Conductorcarro.create(concar_params)
  end

  private
  def concar_params
    params.require(:conductorescarros).permit(:conductor_id, :carro_id, :state)
  end
end
