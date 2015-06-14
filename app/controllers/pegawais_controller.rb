class PegawaisController < ApplicationController
  before_action :set_pegawai, only: [:show, :edit, :update, :destroy]

  # GET /pegawais
  # GET /pegawais.json
  def index
    @pegawais = Pegawai.all
  end

  # GET /pegawais/1
  # GET /pegawais/1.json
  def show
  end

  # GET /pegawais/new
  def new
    @pegawai = Pegawai.new
  end

  # GET /pegawais/1/edit
  def edit
  end

  # POST /pegawais
  # POST /pegawais.json
  def create
    @pegawai = Pegawai.new(pegawai_params)

    respond_to do |format|
      if @pegawai.save
        format.html { redirect_to @pegawai, notice: 'Pegawai was successfully created.' }
        format.json { render :show, status: :created, location: @pegawai }
      else
        format.html { render :new }
        format.json { render json: @pegawai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pegawais/1
  # PATCH/PUT /pegawais/1.json
  def update
    respond_to do |format|
      if @pegawai.update(pegawai_params)
        format.html { redirect_to @pegawai, notice: 'Pegawai was successfully updated.' }
        format.json { render :show, status: :ok, location: @pegawai }
      else
        format.html { render :edit }
        format.json { render json: @pegawai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pegawais/1
  # DELETE /pegawais/1.json
  def destroy
    @pegawai.destroy
    respond_to do |format|
      format.html { redirect_to pegawais_url, notice: 'Pegawai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pegawai
      @pegawai = Pegawai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pegawai_params
      params.require(:pegawai).permit(:nama, :alamat)
    end
end
