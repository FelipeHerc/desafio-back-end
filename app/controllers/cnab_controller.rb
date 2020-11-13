# frozen_string_literal: true

class CnabController < ApplicationController
  def index
    @cnab = Cnab.all
  end
end
