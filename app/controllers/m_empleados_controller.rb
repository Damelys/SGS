class MEmpleadosController < ApplicationController
  before_action :set_m_empleado, only: [:show, :edit, :update, :destroy]

  # GET /m_empleados
  # GET /m_empleados.json
  def index
    @m_empleados = MEmpleado.all
  end

  # GET /m_empleados/1
  # GET /m_empleados/1.json
  def show
  end

  # GET /m_empleados/new
  def new
    @m_empleado = MEmpleado.new
  end

  # GET /m_empleados/1/edit
  def edit
  end

  # POST /m_empleados
  # POST /m_empleados.json
  def create
    @m_empleado = MEmpleado.new(m_empleado_params)

    respond_to do |format|
      if @m_empleado.save
        format.html { redirect_to @m_empleado, notice: 'M empleado was successfully created.' }
        format.json { render :show, status: :created, location: @m_empleado }
      else
        format.html { render :new }
        format.json { render json: @m_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_empleados/1
  # PATCH/PUT /m_empleados/1.json
  def update
    respond_to do |format|
      if @m_empleado.update(m_empleado_params)
        format.html { redirect_to @m_empleado, notice: 'M empleado was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_empleado }
      else
        format.html { render :edit }
        format.json { render json: @m_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_empleados/1
  # DELETE /m_empleados/1.json
  def destroy
    @m_empleado.destroy
    respond_to do |format|
      format.html { redirect_to m_empleados_url, notice: 'M empleado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_empleado
      @m_empleado = MEmpleado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_empleado_params
      params.fetch(:m_empleado, {})
    end
end
