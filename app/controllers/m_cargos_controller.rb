class MCargosController < ApplicationController
  before_action :set_m_cargo, only: [:show, :edit, :update, :destroy]

  # GET /m_cargos
  # GET /m_cargos.json
  def index
    @m_cargos = MCargo.all
  end

  # GET /m_cargos/1
  # GET /m_cargos/1.json
  def show
  end

  # GET /m_cargos/new
  def new
    @m_cargo = MCargo.new
  end

  # GET /m_cargos/1/edit
  def edit
  end

  # POST /m_cargos
  # POST /m_cargos.json
  def create
    @m_cargo = MCargo.new(m_cargo_params)

    respond_to do |format|
      if @m_cargo.save
        format.html { redirect_to @m_cargo, notice: 'M cargo was successfully created.' }
        format.json { render :show, status: :created, location: @m_cargo }
      else
        format.html { render :new }
        format.json { render json: @m_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_cargos/1
  # PATCH/PUT /m_cargos/1.json
  def update
    respond_to do |format|
      if @m_cargo.update(m_cargo_params)
        format.html { redirect_to @m_cargo, notice: 'M cargo was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_cargo }
      else
        format.html { render :edit }
        format.json { render json: @m_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_cargos/1
  # DELETE /m_cargos/1.json
  def destroy
    @m_cargo.destroy
    respond_to do |format|
      format.html { redirect_to m_cargos_url, notice: 'M cargo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_cargo
      @m_cargo = MCargo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_cargo_params
      params.fetch(:m_cargo, {})
    end
end
