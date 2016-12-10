class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :email
      t.string :setor

      t.timestamps
    end
  end
end
