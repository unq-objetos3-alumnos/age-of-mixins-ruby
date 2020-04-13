require "guerrero"

class Espadachin < Guerrero
  def initialize(espada:, **args)
    super(**args)
    @espada = espada
  end

  def ataque
    super * @espada.coeficiente_ataque
  end
end

class Espada
  attr_reader :coeficiente_ataque

  def initialize(coeficiente_ataque)
    @coeficiente_ataque = coeficiente_ataque
  end
end
