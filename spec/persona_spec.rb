require "persona"

describe Persona do
  it "conoce su nombre" do
    pepe = Persona.new("Pepe")

    expect(pepe.nombre).to eq("Marta")
  end
end
