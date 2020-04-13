class Fantasma
  def atacar_a(otra_unidad)
    raise "una unidad no puede atacarse a sí misma" if self == otra_unidad

    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    20
  end
end
