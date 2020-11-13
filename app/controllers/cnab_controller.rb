# frozen_string_literal: true

class CnabController < ApplicationController
  def index
    @cnab = Cnab.all
  end

  def cadastrar
  end

  def adicionar
    arquivo = params[:arquivo].read
    @cnab = CnabService.new(arquivo)

    @cnab.salvar


  end
end
