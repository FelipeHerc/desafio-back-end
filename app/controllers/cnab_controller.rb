# frozen_string_literal: true

class CnabController < ApplicationController
  def index
    @cnabs = Cnab.all
  end

  def cadastrar
  end

  def adicionar
    arquivo = params[:arquivo].read
    @cnab = CnabService.new(arquivo)

    @cnab.salvar
  end

  def totais
    lojas = Cnab.all.pluck(:nome_loja).uniq
    @totais = {}
    lojas.each_with_index do |loja, index|
      total = 0
      registros = Cnab.where(nome_loja: loja)
      
      registros.each do |registro|
        total = total + registro.valor if registro.tipo.positivo?
        total = total - registro.valor if registro.tipo.negativo?
      end

      dono = Cnab.where(nome_loja: loja).first.dono_loja
      @totais[index] = {
        loja: loja,
        total: total,
        dono: dono
      }
      p @totais
    end

  end

end
