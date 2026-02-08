import SwiftUI

struct CategoriaButton: View {
    
    //Titulo del boton
    let titulo: String
    
    //literalmente el nombre de la categoria
    let categoriaSeleccionada: String
    
    //color del fondo gradiente
    let gradientColors: [Color]
    
    //rotacion para la animacion
    @State var rotation: Double = 0
    
    
    //caategoria global, al que le tengo que informar que categoria cambie
    @Binding var categoria: String
    
    //variable que hace que la eleccion de la categoria pase a false para que se oculte esa view
    @Binding var eleccionCategoria: Bool

    
    var body: some View {
        Button(titulo) {
            categoria = categoriaSeleccionada
            
            //Espera 1 segundo antes de cerrar la vista(para que se vea el efecto)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {eleccionCategoria = false}
            
            // Ejecuta la animación del botón
            withAnimation(.easeInOut(duration: 1)) {rotation += 1080}
        }
        .font(.custom("Avenir", size: 45))
        .frame(width: 350, height: 150)
        .background(
            LinearGradient(
                gradient: Gradient(colors: gradientColors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(30)
        .rotation3DEffect(
            .degrees(rotation),  // Aquí se aplica la rotación
                axis: (x: 1, y: 0, z: 0),
            perspective: 0.5
        )
        .padding()
        
    }
    
    
}


