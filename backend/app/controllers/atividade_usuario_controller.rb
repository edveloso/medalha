class AtividadeUsuarioController < ApplicationController

	def atividade_usuario
	end

	def index
		@atividades_usuario = AtividadeUsuario.all
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
				return redirect_to root_path
      else
				return redirect_to root_path
      end

    end
  end
end
