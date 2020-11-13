# frozen_string_literal: true

class CnabService
  def initialize(arquivo)
    @lista_cnab = arquivo.split(/\n/)
  end

  def salvar
    @lista_cnab.each do |cnab|
      sliced_cnab = slice_cnab(cnab)
      
      Cnab.create!(sliced_cnab)
    end
  end

  private
  def slice_cnab(cnab)
    {
      tipo_id: cnab[0].to_i,
      data_hora: DateTime.parse("#{cnab[1..8]}#{cnab[42..47]}"),
      valor: cnab[9..18].to_f/100,
      cpf: cnab[19..29],
      cartao: cnab[30..41],
      dono_loja: cnab[48..61],
      nome_loja: cnab[62..80]
    }
  end
end
