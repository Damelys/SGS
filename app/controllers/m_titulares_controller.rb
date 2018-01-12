class MTitularesController < ApplicationController
  before_action :set_m_titular, only: [:show, :edit, :update, :destroy]

  # GET /m_titulares
  # GET /m_titulares.json
  def index
    @m_titulares = MTitular.all
  end

  # GET /m_titulares/1
  # GET /m_titulares/1.json
  def show
  end

  # GET /m_titulares/new
  def new
    @m_titular = MTitular.new
  end

  # GET /m_titulares/1/edit
  def edit
  end

  # POST /m_titulares
  # POST /m_titulares.json
  def create
    @m_titular = MTitular.new(m_titular_params)

    respond_to do |format|
      if @m_titular.save
        format.html { redirect_to @m_titular, notice: 'M titular was successfully created.' }
        format.json { render :show, status: :created, location: @m_titular }
      else
        format.html { render :new }
        format.json { render json: @m_titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_titulares/1
  # PATCH/PUT /m_titulares/1.json
  def update
    respond_to do |format|
      if @m_titular.update(m_titular_params)
        format.html { redirect_to @m_titular, notice: 'M titular was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_titular }
      else
        format.html { render :edit }
        format.json { render json: @m_titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_titulares/1
  # DELETE /m_titulares/1.json
  def destroy
    @m_titular.destroy
    respond_to do |format|
      format.html { redirect_to m_titulares_url, notice: 'M titular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_titular
      @m_titular = MTitular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_titular_params
      params.fetch(:m_titular, {})
    end
end
