import Foundation

struct Pelicula {
    let titulo: String
    let poster: String // Nombre de la imagen en Assets
    let descripcion: String

    static let sampleData: [Pelicula] = [
        Pelicula(titulo: "Cadena perpetua", poster: "cadena_perpetua", descripcion: "Dos hombres encarcelados establecen una fuerte amistad a lo largo de los años, encontrando consuelo y redención eventual a través de actos de decencia común"),
        Pelicula(titulo: "El pianista", poster: "el_pianista", descripcion: "Narra la historia real de Władysław Szpilman, un pianista judío-polaco que lucha por sobrevivir durante la ocupación nazi en la Segunda Guerra Mundial, utilizando su talento y resiliencia en medio del horror"),
        Pelicula(titulo: "La lista de Schindler", poster: "la_lista_de_schindler", descripcion: "En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar su persecución por parte de los nazis"),
        Pelicula(titulo: "La milla verde", poster: "la_milla_verde", descripcion: "Las vidas de los guardias en el corredor de la muerte se ven afectadas por uno de sus reclusos: un hombre negro acusado de asesinato infantil y violación, pero que tiene un don misterioso"),
        Pelicula(titulo: "La vida es bella", poster: "la_vida_es_bella", descripcion: "Un padre judío-italiano que utiliza su imaginación y humor para proteger a su hijo de los horrores de un campo de concentración nazi, transformando la tragedia en un juego para mantener viva la esperanza"),
        Pelicula(titulo: "Matrix", poster: "matrix", descripcion: "Un hacker informático aprende de rebeldes misteriosos sobre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores")
    ]
}
