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
  var property sueldo = 15000
  var deuda = 0
  var dinero = 0
  
//   method sueldo() = sueldo
  
//   method sueldo(_sueldo) {
//     sueldo = _sueldo
//   }

  method recibirSueldo() {
    deuda -= sueldo
    if (deuda < 0) {
        dinero += -(deuda)
        deuda = 0
    }
  }
  
  method deuda() = deuda
  
  method dinero() = dinero
  
  method gastar(monto) {
    if (dinero > monto) {
        dinero -= monto
    }
    else
        deuda += monto-dinero
        dinero = 0
  }

}

object baigorria {
  var sueldo = 0
  var totalCobrado = 0

  method totalCobrado() = totalCobrado
  
  method vender(_ventas) {
    sueldo += 15 * _ventas
  }

  method recibirSueldo(){
    totalCobrado += sueldo
    sueldo = 0
  }
  
  method sueldo() = sueldo
}

object gimenez {
  var fondo = 300000

  method fondo() = fondo
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.recibirSueldo()
  }
}