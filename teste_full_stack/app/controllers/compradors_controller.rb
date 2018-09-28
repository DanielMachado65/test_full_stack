class CompradorsController < ApplicationController
  before_action :set_comprador, only: [:show, :edit, :update, :destroy]

  # GET /compradors
  # GET /compradors.json
  def index
    @compradors = Comprador.all
  end

  # GET /compradors/1
  # GET /compradors/1.json
  def show
  end

  # GET /compradors/new
  def new
    @comprador = Comprador.new
  end

  # GET /compradors/1/edit
  def edit
  end

  # POST /compradors
  # POST /compradors.json
  def create
    @comprador = Comprador.new(comprador_params)

    respond_to do |format|
      if @comprador.save
        format.html { redirect_to @comprador, notice: 'Comprador was successfully created.' }
        format.json { render :show, status: :created, location: @comprador }
      else
        format.html { render :new }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compradors/1
  # PATCH/PUT /compradors/1.json
  def update
    respond_to do |format|
      if @comprador.update(comprador_params)
        format.html { redirect_to @comprador, notice: 'Comprador was successfully updated.' }
        format.json { render :show, status: :ok, location: @comprador }
      else
        format.html { render :edit }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compradors/1
  # DELETE /compradors/1.json
  def destroy
    @comprador.destroy
    respond_to do |format|
      format.html { redirect_to compradors_url, notice: 'Comprador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comprador
      @comprador = Comprador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comprador_params
      params.require(:comprador).permit(:nome, :email, :telefone)
    end
end
