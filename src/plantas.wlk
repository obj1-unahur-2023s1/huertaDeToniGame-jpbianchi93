import pachamama.*
//clase abs.
class Planta{
	//metodo abs.
	method estaLista() = true
	method regate()
	method valor()
	method tieneGluten() = false
	method estaAgradecida() = pachamama.estaAgradecida()
}

class Maiz inherits Planta {
	var esBebe = true
	override method regate(){
		esBebe = false
	}
	override method estaLista() = not esBebe
	override method valor() = if(self.estaAgradecida()) 180 else 150
}
class Trigo inherits Planta{
	var evolucion = 0
	var vecesRegadas = 0
	override method regate(){
		vecesRegadas++
		if(self.estaAgradecida()){
			vecesRegadas++
		}
		evolucion = vecesRegadas % 4
	}
	override method estaLista() = evolucion >= 2
	override method valor() = if(evolucion==2) 100 else 200
	override method tieneGluten() = true
}
class Tomaco inherits Planta{
	override method regate(){}
	override method valor() = 80
	override method estaLista() = not self.estaAgradecida()
}
