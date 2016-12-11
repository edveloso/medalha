class AtividadeUsuarioController < ApplicationController

	def atividade_usuario
	end

	def index
		@atividades_usuario = AtividadeUsuario.group(:usuario_id).group(:atividade_id)
	end


	def destroy
		@atividade_usuario.destroy
		respond_to do |format|
			format.html { redirect_to usuarios_url, notice: 'Atividade do Usuario foi deletada corretamente.' }
			format.json { head :no_content }
		end
	end

	def create
    @usuario = params[:usuario]
		@atividade = params[:atividade]
		@atividade_usuario = AtividadeUsuario.new(usuario: usuario, atividade: atividade)
    respond_to do |format|
      if @atividade_usuario.save
        format.html { redirect_to @usuario, notice: 'Atividade do Usuario foi cadastrada corretamente.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end
end
