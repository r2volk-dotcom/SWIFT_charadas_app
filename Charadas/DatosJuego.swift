import SwiftUI


//Aca definimos como es una categoria
struct CategoriaConfig: Identifiable {
    let id = UUID()         //Id unico
    let titulo: String       //el texto que vemos en el boton de la categoria
    let categoria: String       //clave interna para buscar las palabras de esa categoria
    let colores: [Color]    //colores del degradado :)
}

//Este es el almacen de datos
struct DatosJuego {
    
    //Defino la apariencia de los botones de una vez xd
    static let categorias: [CategoriaConfig] = [
        CategoriaConfig(
            titulo: "ANIMALES 🐶",
            categoria: "Animales",
            colores: [.orange, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "DEPORTES ⛹🏾‍♂️",
            categoria: "Deportes",
            colores: [.cyan, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "VERDURAS & FRUTAS 🍎",
            categoria: "Verduras & Frutas",
            colores: [.green, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "COMICS 🦸🏻",
            categoria: "Comics",
            colores: [.red, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "CLASH 🃏 ROYALE",
            categoria: "Clash",
            colores: [.purple, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "NIÑOS 👶🏻",
            categoria: "Niños",
            colores: [.mint, .primary.opacity(0.5)]),
        CategoriaConfig(
            titulo: "VARIADO 🥸",
            categoria:  "Miscelanea",
            colores: [.primary.opacity(0.7), .primary.opacity(0.3)])
        
    ]
    
    //Lista de palabras 💀
    static let diccionarioPalabras: [String:[String]] = [
        "Deportes": ["Atletismo","Ajedrez",
                     "Badminton", "Béisbol", "Balonmano", "Boxeo", "Basquetbol","Billar","Bolos","Buceo",
                     "Canotaje", "Ciclismo", "Ciclismo de montaña", "Cricket","Capoeira","Carrera de Relevos","Carrera con vallas","Esquí", "Escalada","Esports","Esgrima",
                     "Fórmula 1", "Futsal", "Fútbol", "Fútbol americano","Fútbol Playa", "Golf", "Gimnasia Ritmica","Gimnasia Artistica", "Hockey sobre hielo","Hockey","Hipica", "Judo",
                     "Karate", "Kickboxing","Kung Fu",
                     "Levantamiento de pesas", "Lucha", "Lucha libre",
                     "Motocross", "MMA", "Motociclismo","Maratón","Marcha Atlética",
                     "Natación artística", "Natación","Nascar",
                     "Ping Pong", "Pádel", "Pesca deportiva","Patinaje","Paracaidismo","Polo","Parkour","Salto con Pertiga",
                     "Rugby", "Remo",
                     "Skateboarding", "Surf", "Salto Largo", "Salto Alto","Sambo","Sumo","Snowboard",
                     "Taekwondo", "Tenis", "Triatlón","Tiro con Arco",
                     "Vela", "Voleibol", "Voleibol de playa",
                     "Waterpolo"],
        "Animales": [ "Abeja","Águila","Alce","Antílope","Araña","Ardilla","Atún","Abejorro","Ácaro","Armadillo","Avestruz","Anguila","Avispa","Ardilla voladora","Asno","Anaconda","Alpaca",
            "Babuino","Ballena","Búfalo","Búho","Bisonte","Buitre",
            "Caballo","Caimán","Camello","Cangrejo","Canguro","Capibara","Caracol","Cebra","Cerdo","Cigüeña","Chimpancé",
            "Cisne","Cobra","Cocodrilo","Colibrí","Conejo","Coyote","Cuervo","Ciervo","Caballito de mar","Camarón",
            "Camaleón","Canario","Cuy","Cucaracha","Culebra","Cabra","Castor","Cóndor","Calamar",
            "Delfín","Dragón de Komodo","Dodo","Delfin Rosado",
            "Elefante","Erizo","Escorpión","Estrella de Mar","Escarabajo",
            "Flamenco","Foca",
            "Gallo","Gato","Gaviota","Gorila","Grillo","Guacamayo","Gavilan","Ganso","Gacelo","Guepardo",
            "Halcón","Hamster","Hipopótamo","Hormiga","Hiena","Hurón",
            "Iguana",
            "Jabalí","Jaguar","Jirafa",
            "Kiwi","Koala",
            "León","Lince","Liebre","Llama","Lobo","Luciérnaga","Leopardo","Lombriz","Loro","Libélula","Leon Marino","Lobo Marino","Lagarto","Lagartija",
            "Mamut","Mapache","Mariposa","Marmota","Medusa","Mula","Murciélago","Mariquita","Manta Raya","Mantis",
            "Ñandú","Nutria",
            "Oso","Orangután","Orca","Oso Polar","Perezoso",
            "Pantera","Pavo","Pez","Pelícano","Perro","Pez payaso","Pingüino","Puma","Panda","Paloma","Pato","Pulpo","Pez Espada", "Pez Globo","Puercoespín",
            "Rata","Raton","Rinoceronte","Rana",
            "Sapo","Serpiente","Serpiente cascabel",
            "Tiburón","Tigre","Tortuga","Topo","Tortuga Marina","Termita","Tigrillo","Tejón de Miel",
            "Urraca",
            "Vaca","Vicuña",
            "Zorro",
            "Xoloitzcuintle","Zancudo","Zarigüeya"],
        "Verduras & Frutas": [ "Aguacate", "Ajo", "Alcachofa", "Apio", "Arándano","Arvejas","Almendra", "Almeja",
            "Berenjena", "Betabel", "Brócoli","Bambú",
            "Cacahuate", "Calabaza", "Cebolla", "Cereza", "Ciruela", "Col", "Coliflor", "Chirimoya","Coco","Camote",
            "Durazno",
            "Espárrago", "Espinaca",
            "Fresa", "Frambuesa",
            "Garbanzo", "Guisante", "Guanábana","Granada","Guayaba",
            "Higo", "Haba",
            "Jengibre",
            "Kiwi",
            "Lenteja", "Lechuga", "Lima", "Limón",
            "Mandarina", "Mango", "Manzana","Maracuyá","Melón", "Mora","Miel","Melocotón","Mamey",
            "Naranja","Nuez",
            "Papaya", "Pera", "Pepino", "Perejil", "Pimiento", "Plátano", "Pomelo","Piña","Papa","Palta",
            "Rábanos", "Remolacha",
            "Sandía","Setas",
            "Tomate", "Tuna","Tamarindo",
            "Uva",
            "Vainilla",
            "Zanahoria"],
        "Comics": [ "Aquaman","Antorcha Humana","Ant Man","Adam Warlock","Abominación","Ares",
            "Batman", "Black Panther", "Blue Beetle","Black Adam","Batgirl","Bruja Escarlata","Bruce Wayne","Barry Allen",
            "Capitana Marvel", "Capitán América", "Catwoman", "Ciclope","Clark Kent","Charles Xavier","Carnage","Cyborg","Caballero de la Noche",
            "Doctor Manhattan","Doctor Destino","Daredevil", "Deadpool", "Doctor Doom","Doctor Strange","Duende Verde",
            "Detective Marciano","Darkseid","Diana Prince",
            "Eddie Brock","Electro",
            "Flash","Falcon",
            "Green Arrow", "Groot","General Zod","Gamora","Galactus","Ghost Rider",
            "Hawkeye", "Hulk","Hela","Harry Osborn","Harley Quinn","Hombre de Acero",
            "Iron Man",
            "Joker", "Justice League","Jovenes Titanes",
            "Kid Flash","Kal-El",
            "Loki", "Luke Cage","Lois Lane","Linterna Verde","Lex Luthor",
            "Magneto", "Moon Knight","Miles Morales","Mister Fantastic","Mantis","Mysterio",
            "Nightwing","Norman Osborn","Ned Leeds",
            "Punisher","Peter Parker",
            "QuickSilver",
            "Robin", "Reed Richards",
            "Shazam", "Silver Surfer", "Spider-Man","Star-Lord","Supergirl", "Superman","Stephen Strange",
            "Thor","Thanos","Tony Stark",
            "Ultron",
            "Wolverine", "Wonder Woman","Wanda Maximoff",
            "Vision","Venom",
            "X-23",
            "Zorro"],
        "Clash": ["Arqueras", "Arquero mágico","Ariete de Batalla","Arbusto Sospechoso",
                  "Bandida", "Bárbaros","Bárbaros de Élite", "Barril de duendes","Barril de Barbaro", "Bola de fuego", "Bola de nieve", "Bruja Nocturna","Ballesta","Bruja","Bruja Madre","Bebé Dragón","Barril de Esqueletos","Berserker","Bombardero",
                  "Caballero", "Cañón","Cañón con ruedas", "Cementerio", "Chispitas", "Choza de bárbaros", "Choza de duendes", "Clon", "Cohete",
                  "Curandera Guerrera","Cazador","Caballero Dorado",
                  "Descarga", "Dragón eléctrico", "Dragón infernal", "Dragones esqueleto", "Duende Gigante", "Duendes","Duendes con Lanza","Duendestein","Demoledor Duende","Duende Lanzadardos",
                  "Ejército de esqueletos", "Electrocutadores", "Esbirros", "Espejo", "Esqueleto gigante", "Espíritu de fuego",
                  "Espíritu de hielo", "Espíritu eléctrico", "Espíritu sanador","Excabadora de duendes","Esqueletos",
                  "Fantasma real", "Fénix", "Flechas","Furia",
                  "Gólem", "Gólem de elixir", "Globo bombástico", "Gran Minero", "Guardias","Gólem de Hielo","Gigante Electrico","Gigante Noble",
                  "Gigante","Gigante Runica",
                  "Horda de Esbirros", "Horno","Hielo",
                  "Jaula del forzudo",
                  "Lápida", "Leñador","Lanzafuegos","Lanzarocas",
                  "Mago", "Mago de hielo", "Mago eléctrico", "Megaesbirro", "Megacaballero", "Mini P.E.K.K.A", "Monje", "Montapuercos", "Mortero", "Mosquetera","Montacarneros","Maquina Voladora","Minero","Maldición Duende","Murcielagos","Maquina Duende",
                  "Paquete Real","P.E.K.K.A", "Pescador", "Pillos", "Príncipe", "Príncipe Oscuro","Puercos Reales","Princesa","Pandilla de Duendes","Principito",
                  "Rayo", "Reclutas Reales", "Reina arquera", "Rompemuros","Recolector de Elixir","Rey Esqueleto",
                  "Sabueso de Lava",
                  "Torre Tesla", "Torre Bombardera","Torre Infernal", "Tornado", "Tronco","Trio de Mosqueteras","Terremoto",
                  "Valquiria", "Veneno","Verdugo","Vacío"],
        "Niños": ["Canada", "Lápiz", "Cuádrelo", "Tajador", "Tijera", "Nemo", "Goku", "Vegeta", "Tom", "Jerry",
                  "Cabo", "Skipper", "Telefono", "Computadora", "Laptop", "Casa", "Paraguas", "Agua", "Gaseosa",
                  "Cerveza", "Espuma", "Teclado", "Dori", "Correcaminos", "Piolin", "Polo", "Camisa", "Corbata",
                  "Pantalla", "Televisor", "Reloj", "SmartWatch", "Reloj de pared", "Pinguino", "Mono", "Pato",
                  "Pollo", "Manzana", "Sandia", "Pera", "Superman", "Batman", "Robin", "Futbol", "Tenis", "Messi",
                  "Cristiano Ronaldo", "Ventana", "Sapo", "Lobo", "Mariposa", "Platano", "Bob esponja", "Juegos",
                  "Caiman", "Pájaro", "Bicicleta", "Peppa pig", "Papá Cerdito", "Mamá Cerdito", "Rapunzel",
                  "Barbie", "Ben 10", "Wolf", "Elefante", "Parque de Atracciones", "Toy Story", "Nube", "Pipa",
                  "Tom y Jerry", "Pantera Rosa", "El Rey Leon", "Mufasa", "Moto Moto", "Cartuchera", "Libro",
                  "Minecraft", "Mario Bros", "Luigi", "Saltar", "Correr", "Bailar", "Reír", "Llorar", "Dormir",
                  "Cantar", "Gritar", "Jugar", "Dibujar", "Nadar", "Comer", "Beber", "Escribir", "Leer", "Pintar",
                  "Aplaudir", "Susurrar", "Sonreír", "Escuela", "Parque", "Piscina", "Playa", "Bosque", "Montaña",
                  "Circo", "Zoológico", "Cine", "Biblioteca", "Tienda", "Supermercado", "Gimnasio", "Museo",
                  "Estadio", "Feria", "Chocolate", "Helado", "Galleta", "Pastel", "Fresas", "Uvas", "Zanahoria",
                  "Pepino", "Papas", "Pizza", "Hamburguesa", "Hot Dog", "Espaguetis", "Huevo", "Queso", "Pan",
                  "Jugo", "Leche", "Yogur", "Miel", "León", "Tigre", "Oso", "Caballo", "Gato", "Perro", "Conejo",
                  "Vaca", "Cerdo", "Gallina", "Ratón", "Tortuga", "Delfín", "Tiburón", "Pulpo", "Cangrejo",
                  "Cebra", "Jirafa", "Koala", "Camaleón", "Rata", "Ardilla", "Erizo", "Pelota", "Silla", "Mesa",
                  "Juguete", "Muñeca", "Carrito", "Globo", "Cometa", "Castillo", "Avión", "Tren", "Autobús",
                  "Camión", "Helicóptero", "Cohete", "Semáforo", "Mochila", "Cepillo de dientes", "Jabon",
                  "Espejo", "Taza", "Plato", "Cuchara", "Tenedor", "Lámpara", "Cuaderno", "Lápices de colores",
                  "Pegamento", "Regla", "Almohada", "Sombrero", "Mickey Mouse", "Minnie Mouse", "Goofy", "Pluto",
                  "Pato Donald", "Scooby-Doo", "Shaggy", "Bugs Bunny", "Pato Lucas", "Silvestre", "Coyote",
                  "Pumba", "Timón", "Simba", "Garfield", "Dora la Exploradora", "Botas", "Bob el Constructor",
                  "Thomas el Tren", "Olaf", "Woody", "Buzz Lightyear", "Los Minions", "Gru", "Shrek", "Fiona",
                  "Burro", "Gato con Botas", "Kung Fu Panda", "Po", "Dragón", "El Oso Yogui", "Barney",
                  "Los Pitufos", "Papá Pitufo", "Pitufo Tontín"]
    ]
    
    //Nos da las palabras listas y mezcladas
    static func obtenerPalabras(categoria: String) -> [String] {

        if categoria == "Miscelanea" {

            // Crea un arreglo vacío donde se guardarán todas las palabras
            var todasLasPalabras: [String] = []

 
            for lista in diccionarioPalabras.values {
                todasLasPalabras.append(contentsOf: lista)
            }

            // Mezcla todas las palabras
            return todasLasPalabras.shuffled()
        }

        // Obtiene la lista de palabras para la categoria seleccionada(si es que exitiera)
        if let palabras = diccionarioPalabras[categoria] {

            return palabras.shuffled()
        } else {
            return []
        }
    }
        
    
}
