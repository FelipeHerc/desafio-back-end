class CreateCnab < ActiveRecord::Migration[5.2]
  def change
    create_table :cnabs do |t|
      t.belongs_to :tipo
      t.datetime :data_hora
      t.integer :valor
      t.string :cpf
      t.string :cartao
      t.string :dono_loja
      t.string :nome_loja
    end
  end
end
