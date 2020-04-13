class ImplAtacante
  attr_reader :ataque

  def initialize(unidad, ataque)
    @ataque = ataque
    @self = unidad
  end

  def atacar_a(defensor)
    raise "una unidad no puede atacarse a sí misma" if @self == defensor

    defensor.recibir_daño(ataque)
  end
end
