class Unidad
  attr_reader :vida
  attr_reader :defensa

  def initialize(**args)
    inicializar_defensor(**args) if defensor?
  end

  def recibir_daño(cantidad_de_daño)
    super unless defensor?

    daño_final = (cantidad_de_daño - @defensa).clamp(0, @vida)
    @vida -= daño_final
  end

  def atacar_a(defensor)
    super unless atacante?

    raise "una unidad no puede atacarse a sí misma" if self == defensor

    defensor.recibir_daño(ataque)
  end

  def ataque
    super unless atacante?

    raise NotImplementedError, "subclass responsibility"
  end

  private

  def inicializar_defensor(defensa:, vida:)
    @defensa = defensa
    @vida = vida
  end

  def atacante?
    false
  end

  def defensor?
    false
  end
end
