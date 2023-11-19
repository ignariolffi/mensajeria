import mensajes.*

class Usuario {

	var chats = []
	var espacioDisponible
	var notificaciones = []

	method llenarMemoria(tamanio) {
		espacioDisponible = espacioDisponible - tamanio
	}

	method tieneEspacioSuficiente(mensaje) = espacioDisponible > mensaje.peso()

	// PUNTO 3
	method buscarTexto()

	// PUNTO 4
	method mensajesMasPesados() = chats.forEach({ chat => chat.mensajeMasPesado() })

	// PUNTO 5 
	// A
	method recibirNotificacion()

	// B
	method leerUnChat()

	// C
	method notificacionesSinLeer()

}

