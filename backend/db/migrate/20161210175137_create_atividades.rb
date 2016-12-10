class CreateAtividades < ActiveRecord::Migration[5.0]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.text :descricao
      t.timestamps
    end
  end
end
