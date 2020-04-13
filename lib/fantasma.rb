require "unidad"

class Fantasma < Unidad
  def ataque
    20
  end

  private

  def atacante?
    true
  end
end
