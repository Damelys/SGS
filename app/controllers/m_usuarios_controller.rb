class MUsuariosController < ApplicationController
  before_action :set_m_usuario, only: [:show, :edit, :update, :destroy]

  # GET /m_usuarios
  # GET /m_usuarios.json
  def index
    @m_usuarios = MUsuario.all
  end

  # GET /m_usuarios/1
  # GET /m_usuarios/1.json
  def show
  end

  # GET /m_usuarios/new
  def new
    @m_usuario = MUsuario.new
  end

  # GET /m_usuarios/1/edit
  def edit
  end

  # POST /m_usuarios
  # POST /m_usuarios.json
  def create
    @m_usuario = MUsuario.new(m_usuario_params)

    respond_to do |format|
      if @m_usuario.save
        format.html { redirect_to @m_usuario, notice: 'M usuario was successfully created.' }
        format.json { render :show, status: :created, location: @m_usuario }
      else
        format.html { render :new }
        format.json { render json: @m_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_usuarios/1
  # PATCH/PUT /m_usuarios/1.json
  def update
    respond_to do |format|
      if @m_usuario.update(m_usuario_params)
        format.html { redirect_to @m_usuario, notice: 'M usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_usuario }
      else
        format.html { render :edit }
        format.json { render json: @m_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_usuarios/1
  # DELETE /m_usuarios/1.json
  def destroy
    @m_usuario.destroy
    respond_to do |format|
      format.html { redirect_to m_usuarios_url, notice: 'M usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_usuario
      @m_usuario = MUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_usuario_params
      params.fetch(:m_usuario, {})
    end
end
