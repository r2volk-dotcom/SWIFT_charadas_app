
import SwiftUI

struct Categorias: View {

    @Binding var categoria: String
    @Binding var eleccionCategoria: Bool

    
    var body: some View {
        
        Spacer()
        
        ScrollView{
            
            ForEach(DatosJuego.categorias){item in
                CategoriaButton(
                    titulo: item.titulo,
                    categoriaSeleccionada: item.categoria,
                    gradientColors: item.colores,
                    categoria: $categoria,
                    eleccionCategoria: $eleccionCategoria
                )
            }
            
        }
        .fontWeight(.black)
        .foregroundStyle(Color.primary)
        
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
