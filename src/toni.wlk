import wollok.game.*
import plantas.*

object toni {
	//wollok game
	//posicion inicial
	var property position = game.center()
	//imagen
	const property image = "toni.png"
	
	const plantasSembradas = []
	const plantasCosechadas = []
	var monedas = 0
	
	method monedas() = monedas
	method plantar(unaPlanta) {
		plantasSembradas.add(unaPlanta)
	}
	method regarLasPlantas() {
		plantasSembradas.forEach({planta => self.regar(planta)})
	}
	method regar(unaPlanta){
		unaPlanta.regate()
	}
	method cosecharTodo(plantasListasParaCosechar) {
		plantasListasParaCosechar.forEach{ 
		planta => self.cosechar(unaPlanta)}
	}
	method plantasListasParaCosechar(){
		return plantasSembradas.filter{planta=>planta.estaLisa()}
	}
	method cosechar(unaPlanta){
		plantasSembradas.remove(unaPlanta)
		plantasCosechadas.add(unaPlanta)
	}
	method venderCosecha(){
		monedas += self.valorDeCosecha()
		palantasCosechadas.clear()
	}	
	method paraCuantosDiasAlcanza() {
	//div= devuelve el cociente
		return (monedas + self.valorDecosecha()).div(200)
	}
	method valorDeCosecha() = plantasCosechadas.sum{planta => planta.valor()}
	
	method cuantoHayParaCeliacos () = 
	self
	.plantasListasParaCosechar()
	.count {planta => not plana.tieneGluten() }
	
	method convieneRegar() = plantasSembradas.any { planta => not planta.estaLista() }
}
