require "unidad"

class Guerrero < Unidad
  def initialize(fuerza:, **args)
    super(**args)
    @fuerza = fuerza
  end

  def ataque
    @fuerza
  end

  private

  def atacante?
    true
  end

  def defensor?
    true
  end
end
