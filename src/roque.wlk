import comidas.*
import pepita.*

object roque {

	var comida = null
	var property posicion = game.at(0, 0)

	method imagen() = "jugador.png"

	method levantar(nuevaComida) {
		if (comida != null){
			game.addVisualIn(comida, posicion.up(1))
		}
		comida = nuevaComida
		game.removeVisual(comida)
	}

	method comidaAgarrada() {
		return comida
	}

	method darComida() {
		pepita.come(comida)
		comida = null
		// TODO acá estás agregando las cosas cosas, y sólo debería largar
		// aquello que roque agarró
		game.addVisualIn(manzana, game.at(5,1))
		game.addVisualIn(alpiste, game.at(5,5))
	}

}
