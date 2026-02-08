
import SwiftUI

struct Categorias: View {

    @Binding var categoria: String
    @Binding var eleccionCategoria: Bool

    
    var body: some View {
        
        Spacer()
        
        ScrollView{
            
            CategoriaButton(
                titulo: "ANIMALES 🐶",
                categoriaSeleccionada: "Animales",
                gradientColors: [Color.orange, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "DEPORTES ⛹🏾‍♂️",
                categoriaSeleccionada: "Deportes",
                gradientColors: [Color.cyan, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "VERDURAS & FRUTAS 🍎",
                categoriaSeleccionada: "Verduras & Frutas",
                gradientColors: [Color.green, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "COMICS 🦸🏻",
                categoriaSeleccionada: "Comics",
                gradientColors: [Color.red, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "CLASH 🃏 ROYALE",
                categoriaSeleccionada: "Clash Royale",
                gradientColors: [Color.purple, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "NIÑOS 👶🏻",
                categoriaSeleccionada: "Niños",
                gradientColors: [Color.mint, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "ANIMALES 🐶",
                categoriaSeleccionada: "Animales",
                gradientColors: [Color.orange, Color.primary.opacity(0.5)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
            
            CategoriaButton(
                titulo: "VARIADO 🥸",
                categoriaSeleccionada: "Miscelanea",
                gradientColors: [Color.primary.opacity(0.7), Color.primary.opacity(0.3)],
                categoria: $categoria,
                eleccionCategoria: $eleccionCategoria
            )
            
           
            
        }
        .fontWeight(.black)
        .foregroundStyle(Color.primary)
        
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
