import pachamama.*
//clase abs.
class Planta{
	var property image
	//metodo abs.
	method estaLista() = true
	method regate()
	method valor()
	method tieneGluten() = false
	method estaAgradecida() = pachamama.estaAgradecida()
}

class Maiz inherits Planta {
	var esBebe = true
	method initialize() {
		image = "maiz_bebe.png"
	}
	override method regate(){
		esBebe = false
		image = "maiz_adulto.png"
	}
	override method estaLista() = not esBebe
	override method valor() = if(self.estaAgradecida()) 180 else 150
}
	//igual que initialize
class Trigo inherits Planta(image = "trigo_0.png") {
	var evolucion = 0
	var vecesRegadas = 0
	override method regate(){
		vecesRegadas++
		if(self.estaAgradecida()){
			vecesRegadas++
		}
		evolucion = vecesRegadas % 4
		image = "trigo_" + evolucion + ".png"
	}
	override method estaLista() = evolucion >= 2
	override method valor() = if(evolucion==2) 100 else 200
	override method tieneGluten() = true
}
	
class Tomaco inherits Planta {
	method initialize() {
		image = "tomaco_ok.png"
	}
	override method regate(){}
	override method valor() = 80
	override method estaLista() = not self.estaAgradecida()
}
