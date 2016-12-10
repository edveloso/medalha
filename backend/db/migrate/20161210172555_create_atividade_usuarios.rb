class CreateAtividadeUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :atividade_usuarios do |t|
      t.belongs_to :atividade
      t.belongs_to :usuario
      t.timestamps
    end
  end
end
