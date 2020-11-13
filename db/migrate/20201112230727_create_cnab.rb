class CreateCnab < ActiveRecord::Migration[5.2]
  def change
    create_table :cnabs do |t|
      t.belongs_to :tipo
      t.string :data
      t.integer :valor
      t.string :cpf
      t.string :cartao
      t.string :hora
      t.string :dono_loja
      t.string :nome_loja
    end
  end
end
