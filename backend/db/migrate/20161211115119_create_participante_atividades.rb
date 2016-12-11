class CreateParticipanteAtividades < ActiveRecord::Migration[5.0]
  def change
    create_table :participante_atividades do |t|
      t.string :atividade
      t.string :participante
      t.integer :quantidade

      t.timestamps
    end
  end
end
