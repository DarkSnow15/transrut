class CarrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_carro, only: [:show, :edit, :update, :destroy]

  # GET /carros
  # GET /carros.json
  def index
    @carros = Carro.all
  end

  # GET /carros/1
  # GET /carros/1.json
  def show
  end

  # GET /carros/new
  def new
    @carro = Carro.new
  end

  # GET /carros/1/edit
  def edit
  end

  # POST /carros
  # POST /carros.json
  def create
    @carro = Carro.new(carro_params)

    respond_to do |format|
      if @carro.save
        format.html { redirect_to @carro, notice: 'Carro creado correctamente.' }
        format.json { render :show, status: :created, location: @carro }
      else
        format.html { render :new }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carros/1
  # PATCH/PUT /carros/1.json
  def update
    respond_to do |format|
      if @carro.update(carro_params)
        format.html { redirect_to @carro, notice: 'Carro actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @carro }
      else
        format.html { render :edit }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.json
  def destroy
    @carro.destroy
    respond_to do |format|
      format.html { redirect_to carros_url, notice: 'Carro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_params
      params.require(:carro).permit(:placa, :serv_publico, :nom_prop, :documen_prop, :cel_propietario, :fecha_venc_soat, :fecha_venc_tm, :fecha_venc_pe, :fecha_venc_pc, :img_lic_trans, :img_tarj_oper, :img_soat, :img_tec_mecan, :carro_img)
    end
end
