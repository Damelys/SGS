class MPolizasController < ApplicationController
  before_action :set_m_poliza, only: [:show, :edit, :update, :destroy]

  # GET /m_polizas
  # GET /m_polizas.json
  def index
    @m_polizas = MPoliza.all
  end

  # GET /m_polizas/1
  # GET /m_polizas/1.json
  def show
  end

  # GET /m_polizas/new
  def new
    @m_poliza = MPoliza.new
  end

  # GET /m_polizas/1/edit
  def edit
  end

  # POST /m_polizas
  # POST /m_polizas.json
  def create
    @m_poliza = MPoliza.new(m_poliza_params)

    respond_to do |format|
      if @m_poliza.save
        format.html { redirect_to @m_poliza, notice: 'M poliza was successfully created.' }
        format.json { render :show, status: :created, location: @m_poliza }
      else
        format.html { render :new }
        format.json { render json: @m_poliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_polizas/1
  # PATCH/PUT /m_polizas/1.json
  def update
    respond_to do |format|
      if @m_poliza.update(m_poliza_params)
        format.html { redirect_to @m_poliza, notice: 'M poliza was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_poliza }
      else
        format.html { render :edit }
        format.json { render json: @m_poliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_polizas/1
  # DELETE /m_polizas/1.json
  def destroy
    @m_poliza.destroy
    respond_to do |format|
      format.html { redirect_to m_polizas_url, notice: 'M poliza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_poliza
      @m_poliza = MPoliza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_poliza_params
      params.fetch(:m_poliza, {})
    end
end
