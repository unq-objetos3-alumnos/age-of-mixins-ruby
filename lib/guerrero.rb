class Guerrero
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
  end

  def atacar_a(otro_guerrero)
    otro_guerrero.recibir_daño(@fuerza)
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = cantidad_de_daño - @defensa
    @vida -= daño_final if daño_final > 0
  end
end
