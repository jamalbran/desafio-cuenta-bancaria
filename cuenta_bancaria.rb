class CuentaBancaria
  def initialize(nombre_usuario, numero_cuenta, vip = 0)
    raise RangeError, 'El numero de cuenta debe tener 8 digitos' if numero_cuenta.digits.count != 8

    @nombre_usuario = nombre_usuario
    @numero_cuenta = numero_cuenta
    @vip = vip
  end

  def numero_de_cuenta
    if @vip == 1
      puts "1-#{@numero_cuenta}"
    else
      puts "0-#{@numero_cuenta}"
    end
  end
end

u1 = CuentaBancaria.new('Usuario1', 12345678, 1)

u1.numero_de_cuenta
