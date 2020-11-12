module Sinal
  extend ActiveSupport::Concern

  included do
    enum sinal: {
      positivo: 0,
      negativo: 1
    }
  end
end
