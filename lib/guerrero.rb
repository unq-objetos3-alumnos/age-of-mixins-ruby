require "defensor"

class Guerrero < Defensor
  def initialize(fuerza:, **args)
    super(**args)
    @fuerza = fuerza
  end

  def ataque
    @fuerza
  end
end
