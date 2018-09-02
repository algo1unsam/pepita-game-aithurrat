import comidas.*
import pepita.*
object roque {
	var comida = null
	var property posicion = game.at(0,0)
	method imagen() = "jugador.png"
	
	method levantar(nuevaComida){
		if (comida != null){
			game.addVisualIn(comida, posicion.up(1))
		}
		comida=nuevaComida
		game.removeVisual(comida)
	}
	
	method comidaAgarrada(){
		return comida
	}
	
	method darComida(){
		pepita.come(comida)
		comida=null
	}
	
}
