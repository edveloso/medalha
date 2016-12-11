class AtividadeUsuariosController < ApplicationController

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
 	# 	atividade_usuario = atividade_params[:atividade_usuario]
    # @usuario = atividade_usuario[:usuario]
		# @atividade = atividade_usuario[:atividade]
		# @atividade_usuario = AtividadeUsuario.new(usuario_id: @usuario, atividade_id: @atividade)
		AtividadeUsuario.create(atividade_params)

    # respond_to do |format|
		# 	@atividade_usuario.save
    #   # if @atividade_usuario.save
    #   #   # format.html { redirect_to @usuario, notice: 'Atividade do Usuario foi cadastrada corretamente.' }
    #   #   # format.json { render :show, status: :created, location: @usuario }
    #   # else
    #   #   format.html { render :new }
    #   #   format.json { render json: @usuario.errors, status: :unprocessable_entity }
    #   # end
    # end
  end

	private

	def atividade_params
		params.require(:atividade_usuario).permit(:usuario_id, :atividade_id)
	end
end
