class Guerrero
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
  end

  def atacar_a(otro_guerrero)
    raise "una unidad no puede atacarse a sí misma" if self == otro_guerrero

    otro_guerrero.recibir_daño(@fuerza)
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = (cantidad_de_daño - @defensa).clamp(0, @vida)
    @vida -= daño_final
  end
end
