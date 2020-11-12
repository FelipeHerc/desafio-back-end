module Natureza
  extend ActiveSupport::Concern

  included do
    enum natureza: {
      entrada: 0,
      saida: 1
    }
  end
end
