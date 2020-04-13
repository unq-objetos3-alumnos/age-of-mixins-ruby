class Unidad
  attr_reader :vida
  attr_reader :defensa

  def initialize(defensa:, vida:)
    @defensa = defensa
    @vida = vida
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = (cantidad_de_daño - @defensa).clamp(0, @vida)
    @vida -= daño_final
  end

  def atacar_a(defensor)
    raise "una unidad no puede atacarse a sí misma" if self == defensor

    defensor.recibir_daño(ataque)
  end

  def ataque
    raise NotImplementedError, "subclass responsibility"
  end
end
