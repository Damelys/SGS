class MClientesController < ApplicationController
  before_action :set_m_cliente, only: [:show, :edit, :update, :destroy]

  # GET /m_clientes
  # GET /m_clientes.json
  def index
    @m_clientes = MCliente.all
  end

  # GET /m_clientes/1
  # GET /m_clientes/1.json
  def show
  end

  # GET /m_clientes/new
  def new
    @m_cliente = MCliente.new
  end

  # GET /m_clientes/1/edit
  def edit
  end

  # POST /m_clientes
  # POST /m_clientes.json
  def create
    @m_cliente = MCliente.new(m_cliente_params)

    respond_to do |format|
      if @m_cliente.save
        format.html { redirect_to @m_cliente, notice: 'M cliente was successfully created.' }
        format.json { render :show, status: :created, location: @m_cliente }
      else
        format.html { render :new }
        format.json { render json: @m_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_clientes/1
  # PATCH/PUT /m_clientes/1.json
  def update
    respond_to do |format|
      if @m_cliente.update(m_cliente_params)
        format.html { redirect_to @m_cliente, notice: 'M cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_cliente }
      else
        format.html { render :edit }
        format.json { render json: @m_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_clientes/1
  # DELETE /m_clientes/1.json
  def destroy
    @m_cliente.destroy
    respond_to do |format|
      format.html { redirect_to m_clientes_url, notice: 'M cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_cliente
      @m_cliente = MCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_cliente_params
      params.fetch(:m_cliente, {})
    end
end
