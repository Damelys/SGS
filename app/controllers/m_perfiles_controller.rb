class MPerfilesController < ApplicationController
  before_action :set_m_perfil, only: [:show, :edit, :update, :destroy]

  # GET /m_perfiles
  # GET /m_perfiles.json
  def index
    @m_perfiles = MPerfil.all
  end

  # GET /m_perfiles/1
  # GET /m_perfiles/1.json
  def show
  end

  # GET /m_perfiles/new
  def new
    @m_perfil = MPerfil.new
  end

  # GET /m_perfiles/1/edit
  def edit
  end

  # POST /m_perfiles
  # POST /m_perfiles.json
  def create
    @m_perfil = MPerfil.new(m_perfil_params)

    respond_to do |format|
      if @m_perfil.save
        format.html { redirect_to @m_perfil, notice: 'M perfil was successfully created.' }
        format.json { render :show, status: :created, location: @m_perfil }
      else
        format.html { render :new }
        format.json { render json: @m_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_perfiles/1
  # PATCH/PUT /m_perfiles/1.json
  def update
    respond_to do |format|
      if @m_perfil.update(m_perfil_params)
        format.html { redirect_to @m_perfil, notice: 'M perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_perfil }
      else
        format.html { render :edit }
        format.json { render json: @m_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_perfiles/1
  # DELETE /m_perfiles/1.json
  def destroy
    @m_perfil.destroy
    respond_to do |format|
      format.html { redirect_to m_perfiles_url, notice: 'M perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_perfil
      @m_perfil = MPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_perfil_params
      params.fetch(:m_perfil, {})
    end
end
