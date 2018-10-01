class IngressosController < ApplicationController
  before_action :set_ingresso, only: [:show, :edit, :update, :destroy]

  # GET /ingressos
  # GET /ingressos.json
  def index
    @ingressos = Ingresso.all
  end

  # GET /ingressos/1
  # GET /ingressos/1.json
  def show
  end

  # GET /ingressos/new
  def new
    @ingresso = Ingresso.new
  end

  # GET /ingressos/1/edit
  def edit
  end

  # POST /ingressos
  # POST /ingressos.json
  # TODO: achar outra solução para fazer a validação por tipo de dado, por enquanto eu ainda não vi
  # uma maneira de fazer no model a validação para tipo de dado. 
  def create
    @ingresso = Ingresso.new(ingresso_params)
    if @ingresso.preco != 0
      respond_to do |format|
        if @ingresso.save
          format.html { redirect_to @ingresso, notice: 'Ingresso was successfully created.' }
          format.json { render :show, status: :created, location: @ingresso }
        else
          format.html { render :new }
          format.json { render json: @ingresso.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to @ingresso, notice: 'Não foi criar os tipos de dados estão errados.' }
        format.json { render json: @ingresso.errors}
      end
    end
  end

  # PATCH/PUT /ingressos/1
  # PATCH/PUT /ingressos/1.json
  def update
    respond_to do |format|
      if @ingresso.update(ingresso_params)
        format.html { redirect_to @ingresso, notice: 'Ingresso was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingresso }
      else
        format.html { render :edit }
        format.json { render json: @ingresso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingressos/1
  # DELETE /ingressos/1.json
  def destroy
    @ingresso.destroy
    respond_to do |format|
      format.html { redirect_to ingressos_url, notice: 'Ingresso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingresso
      @ingresso = Ingresso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingresso_params
      params.require(:ingresso).permit(:preco, :nome, :taxa, :data)
    end
end
