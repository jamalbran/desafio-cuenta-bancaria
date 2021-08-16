class Carta
  attr_accessor :numero, :pinta

  def initialize(numero, pinta)
    raise ArgumentError, 'El numero no esta dentro del rango 1 - 13' if numero < 1 || numero > 13

    @numero = numero
    raise ArgumentError, 'La pinta no es una correcta.' unless ['C', 'D', 'E', 'T'].include?(pinta)

    @pinta = pinta
  end
end

cartas = []
5.times do
  pintas = ['C', 'D', 'E', 'T']
  x = Carta.new(rand(1.. 13), pintas.sample())
  cartas.push(x)
end

print cartas
