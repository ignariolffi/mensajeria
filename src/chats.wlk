import mensajes.*
import usuarios.*

class Chat {

	const participantes = []
	var mensajesEnviados = []

	method mensajesEnviados() = mensajesEnviados

	method mensajeMasPesado() = mensajesEnviados.max({ mensaje => mensaje.peso() })

	// PUNTO 1
	method espacioQueOcupa() = mensajesEnviados.sum({ men => men.peso() })

	method cumpleCond(mensaje) = self.emisorPerteneceAlChat(mensaje) and self.participantesTienenEspacioSuficiente(mensaje)

	method emisorPerteneceAlChat(mensaje) = participantes.any({ part => part == mensaje.emisor() })

	method participantesTienenEspacioSuficiente(mensaje) = participantes.all({ part => part.tieneEspacioSuficiente(mensaje) })

	method agregarMensaje(mensaje) {
		mensajesEnviados.add(mensaje)
	}

}

class ChatPremium inherits Chat {

	const restriccionAdicional

}

class difusion {

	var creador

}

class Restringido {

	const maximoMensajes

}

class Ahorro {

	const tamanioMaximo

}

