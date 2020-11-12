class CreateTipo < ActiveRecord::Migration[5.2]
  def change
    create_table :tipos do |t|
      t.string :descricao
      t.integer :natureza
      t.integer :sinal
      t.timestamps
    end
  end
end
