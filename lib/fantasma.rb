require "impl_atacante"

class Fantasma
  def initialize
    @impl_atacante = ImplAtacante.new(self, 20)
  end

  def atacar_a(defensor)
    @impl_atacante.atacar_a(defensor)
  end
end
