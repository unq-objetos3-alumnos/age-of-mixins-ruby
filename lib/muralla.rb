require "impl_defensor"

class Muralla
  def initialize(defensa:, vida:)
    @impl_defensor = ImplDefensor.new(defensa: defensa, vida: vida)
  end

  def vida
    @impl_defensor.vida
  end

  def defensa
    @impl_defensor.defensa
  end

  def recibir_daño(cantidad_de_daño)
    @impl_defensor.recibir_daño(cantidad_de_daño)
  end
end
