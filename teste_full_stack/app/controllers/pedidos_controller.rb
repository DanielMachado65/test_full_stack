class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  # HACK: essa parte retorna as datas acima dos dias atuais.
  def index
    @pedidos = Pedido.joins(:ingresso).where(comprador_id: current_comprador.id).where("ingressos.data > ?", Time.now)
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  # HACK: validação dos pedidos atuais. 
  def create
    @pedido =  Pedido.new(comprador_id: current_comprador.id, ingresso_id: params[:ingresso_id], pago: params[:pedido][:pago])
    if @pedido.ingresso.data > Time.now
      respond_to do |format|
        if @pedido.save
          format.html { redirect_to @pedido, notice: 'Pedido foi criado com sucesso.' }
          format.json { render :show, status: :created, location: @pedido }
        else
          format.html { render :new }
          format.json { render json: @pedido.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to @pedido, notice: 'Pedido não pode ser criado, porque é mais antigo que a data atual'
    end

  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:comprador_id, :ingresso_id, :pago)
    end
end
