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
var sueldo = 15000 //preguntar si puedo usaasr property, si porque necesita ambos accessors (getter y setter).
var dinero = 0
var deuda = 0

  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method recibirSueldo() {
    dinero += sueldo
    self.pagarDeudas() //preguntar si un if con efecto deberia ser separado por la resposibilidad del metodo
  }

  method pagarDeudas(){ //esta bien separar en subtareas con sentencias, pero tambien tener en cuenta que if es una expresion.
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
    ventas += _ventas //esto esta bien porque es una accion sobre un atributo, estaria haciendo cosas de mas sino.
    // sueldo += 15 * _ventas PRECALCULO? si
  }

  method recibirSueldo(){
    totalCobrado += self.sueldo()
    ventas = 0
  }
  
  method sueldo() { //DUDA: antes getter
    return 15 * ventas // calculo que devuelve un valor, por eso esta bien
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