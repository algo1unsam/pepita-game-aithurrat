import ciudades.*
import roque.*
import comidas.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepita.png"
		}
		if (energia > 100) {
			return "pepita2.png"
		} else {
			return "pepita1.png"
		}
	}

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

	// TODO Acá no estás usando alguien, ahora anda porque roque es el único "alguien"
	// pero si agregaras otro no te anda mas
	method teEncontro(alguien) {
		roque.darComida()
	}

}

