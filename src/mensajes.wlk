class Mensaje {

	var emisor

	method pesoContenido()

	method peso() = 5 + self.pesoContenido() * 1.3

}

class Texto inherits Mensaje {

	const cantCaracteres

	override method pesoContenido() = 1 * cantCaracteres

}

class Video inherits Mensaje {

	const duracion

	override method pesoContenido() = 1.2 * duracion

}

class Imagen inherits Mensaje {

	const pesoPixel = 2
	const alto
	const ancho
	const modoCompresion

	method cantidadPixeles() = pesoPixel * alto * ancho

	override method pesoContenido() = modoCompresion.calculoPeso(self)

}

class Gif inherits Imagen {

	const cantidadCuadros

	override method pesoContenido() = super() * cantidadCuadros

}

object compresionOriginal {

	method calculoPeso(imagen) = imagen.cantidadPixeles()

}

class CompresionVariable {

	const porcentajeCompresion

	method calculoPeso(imagen) = imagen.cantidadPixeles() * porcentajeCompresion

}

object compresionMaxima {

	method calculoPeso(imagen) = if (imagen.cantidadPixeles() <= 10000) imagen.cantidadPixeles() else self.reducir(imagen)

	method reducir(imagen) = imagen.cantidadPixeles() - self.pixelesARestar(imagen)

	method pixelesARestar(imagen) = imagen.cantidadPixeles() - 10000

// tambien se puede enviar directamente 10000 pero como dice reducir supuse que se necesita crear un metodo 
}

class Contacto inherits Mensaje {

	const contactoEnviado

	override method pesoContenido() = 3

}

