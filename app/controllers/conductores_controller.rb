class ConductoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conductor, only: [:show, :edit]
  def index
    @conductores = Conductor.all
  end

  def edit
  end

  def show

  end

  def new
    @conductor = Conductor.new
  end

  def create
    @conductor = Conductor.create(params_conductor)
    if @conductor.save
      flash[:success] = "Conductor guardado correctamente"
      render :show
    else
      flash[:alert] = "No se pudo guardar el conductor"
      render :new
    end
  end

  def update
    @conductor = Conductor.find(params[:id])
    if @conductor.update(params_conductor)
      flash[:success] = "Conductor actualizado correctamente"
      render :show
    else
      flash[:alert] = "No se pudo actualizar el conductor"
      render :new
    end
  end

private
  def params_conductor
    params.require(:conductor).permit(:num_documento, :nombre, :fech_ingreso, :fech_seg_ini, :fech_seg_ven, :fech_ven_licen)
  end
  def set_conductor
    @conductor = Conductor.find(params[:id])
  end
end
