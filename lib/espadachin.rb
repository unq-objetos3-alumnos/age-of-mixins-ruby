class Espadachin
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:, coeficiente_espada: 1)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
    @coeficiente_espada = coeficiente_espada
  end

  def atacar_a(otra_unidad)
    raise "una unidad no puede atacarse a sí misma" if self == otra_unidad

    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    @fuerza * @coeficiente_espada
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = (cantidad_de_daño - @defensa).clamp(0, @vida)
    @vida -= daño_final
  end
end
