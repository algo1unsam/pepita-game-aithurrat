import ciudades.*
import roque.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)

	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			game.say(self, "Ya estoy ahi!")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if (energia < self.energiaParaVolar(posicion.distance(nuevaPosicion))) {
			game.say(self, "Dame de comer primero!")
		} else {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		}
	}

	method teEncontro(alguien) {
		roque.darComida()
	}

}
