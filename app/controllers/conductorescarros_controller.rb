class ConductorescarrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conductcar, only: [:show, :edit, :update, :destroy]

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
    @conductorcarro = Conductorcarro.new(concar_params)
    if @conductorcarro.save
      flash[:success] = "Conductor asociado"
      render :show
    else
      flash[:alert] = "No se pudo asociar el conductor"
      render :new
    end
  end

  private
  def concar_params
    params.require(:conductorcarro).permit(:conductor_id, :carro_id, :state)
  end
  def set_conductcar
    @conductorcarro = Conductorcarro.find(params[:id])
  end
end
