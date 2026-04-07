// empleados2.wlk
// empleados2.wlk
// empleados2.wlk
// empleados2.wlk

object galvan {
var property sueldo = 15000 
var saldo = 0

  method recibirSueldo() {
    saldo += self.sueldo()
  }

  method deuda() = if (saldo < 0) -(saldo) else 0
  
  method dinero() = if (saldo > 0) saldo else 0

  method gastar(monto) {
    saldo -= monto
  }

}

object baigorria {
  var cantVentas = 0
  var totalCobrado = 0
  const comision = 15

  method totalCobrado() = totalCobrado
  
  method vender(_cantVentas) {
    cantVentas += _cantVentas
  }

  method recibirSueldo(){
    totalCobrado += self.sueldo()
    cantVentas = 0
  }
  
  method sueldo() { 
    return comision * cantVentas
  } 
}

object gimenez {
  var fondo = 300000

  method fondo() = fondo
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.recibirSueldo()
  }
}