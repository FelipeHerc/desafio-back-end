# frozen_string_literal: true

class Tipo < ApplicationRecord
  include Natureza
  include Sinal
end
