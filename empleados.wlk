// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
// empleados.wlk
//Escribir aqui los objetos
//Escribir aqui los objetos
object galvan {
var sueldo = 15000
var dinero = 0
var deuda = 0

  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method recibirSueldo() {
    dinero += sueldo
    self.pagarDeudas()
  }

  method pagarDeudas(){
    if (deuda > dinero) {
      deuda -= dinero
      dinero = 0
    }
    else {
      dinero -= deuda
      deuda = 0
    }
  }
  
  method deuda() = deuda
  
  method dinero() = dinero

  method gastar(monto) {
    if (monto > dinero) {
      deuda += monto - dinero
      dinero = 0
    }
    else {
      dinero -= monto
    }
  }

}

object baigorria {
  var ventas = 0
  var totalCobrado = 0

  method totalCobrado() = totalCobrado
  
  method vender(_ventas) {
    ventas += _ventas
    // sueldo += 15 * _ventas
  }

  method recibirSueldo(){
    totalCobrado += self.sueldo()
    ventas = 0
  }
  
  method sueldo() {
    return 15 * ventas
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