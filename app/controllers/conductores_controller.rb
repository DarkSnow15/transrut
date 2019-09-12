class ConductoresController < ApplicationController
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
      render :show
    else
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
