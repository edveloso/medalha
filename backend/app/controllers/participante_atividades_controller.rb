class ParticipanteAtividadesController < ApplicationController
  before_action :set_participante_atividade, only: [:show, :edit, :update, :destroy]

  # GET /participante_atividades
  # GET /participante_atividades.json
  def index
    @participante_atividades = ParticipanteAtividade.all
  end

  # GET /participante_atividades/1
  # GET /participante_atividades/1.json
  def show
  end

  # GET /participante_atividades/new
  def new
    @lista_usuarios = Usuario.all
    @participante_atividade = ParticipanteAtividade.new
  end

  # GET /participante_atividades/1/edit
  def edit
  end

  # POST /participante_atividades
  # POST /participante_atividades.json
  def create
    @participante_atividade = ParticipanteAtividade.new(participante_atividade_params)

    respond_to do |format|
      if @participante_atividade.save
        format.html { redirect_to @participante_atividade, notice: 'Participante atividade was successfully created.' }
        format.json { render :show, status: :created, location: @participante_atividade }
      else
        format.html { render :new }
        format.json { render json: @participante_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participante_atividades/1
  # PATCH/PUT /participante_atividades/1.json
  def update
    respond_to do |format|
      if @participante_atividade.update(participante_atividade_params)
        format.html { redirect_to @participante_atividade, notice: 'Participante atividade was successfully updated.' }
        format.json { render :show, status: :ok, location: @participante_atividade }
      else
        format.html { render :edit }
        format.json { render json: @participante_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participante_atividades/1
  # DELETE /participante_atividades/1.json
  def destroy
    @participante_atividade.destroy
    respond_to do |format|
      format.html { redirect_to participante_atividades_url, notice: 'Participante atividade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante_atividade
      @participante_atividade = ParticipanteAtividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participante_atividade_params
      params.require(:participante_atividade).permit(:atividade, :participante, :quantidade)
    end
end
