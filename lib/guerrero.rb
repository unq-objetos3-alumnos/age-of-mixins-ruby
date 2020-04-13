class Guerrero
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:, arma: Puños.new)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
    @arma = arma
  end

  def atacar_a(otra_unidad)
    raise "una unidad no puede atacarse a sí misma" if self == otra_unidad

    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    @fuerza * @arma.coeficiente_ataque
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = (cantidad_de_daño - @defensa).clamp(0, @vida)
    @vida -= daño_final
  end
end

class Puños
  def coeficiente_ataque
    1
  end
end

class Espada
  attr_reader :coeficiente_ataque

  def initialize(coeficiente_ataque)
    @coeficiente_ataque = coeficiente_ataque
  end
end
