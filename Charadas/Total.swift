
import SwiftUI

struct Total: View {
    
    @Binding var acertados: [String]
    @Binding var incorrectas: [String]
    @Binding var listaElementos: [String]
    @Binding var eleccionCategoria: Bool
    @Binding var resultados: Bool
    @Binding var btnEmpezar: Bool
    
    var body: some View {
        
        Spacer()
        
        ResultadosStyle(
            titulo: "Correctas: \(acertados.count) ✅",
            textos: acertados,
            color: Color(red: 0.0, green: 0.5, blue: 0.0),
            colorFondo: .green.opacity(0.3),
            altura: 300
        )
        
        Spacer()
        
        ResultadosStyle(
            titulo: "Malas: \(incorrectas.count) 🙄",
            textos: incorrectas,
            color: Color(red: 0.5, green: 0.0, blue: 0.0),
            colorFondo: .red.opacity(0.3),
            altura: 150
        )
        
        Spacer()
        
        HStack{
            InicioReintentarButton(
                titulo: "INICIO",
                color: .blue.opacity(0.7),
                action: {resetearJuego(irInicio: true)}
            )
            
            InicioReintentarButton(
                titulo: "REINTENTAR",
                color: .purple.opacity(0.7),
                action: {resetearJuego(irInicio: false)}
            )
        }
        .padding(.top)
    }
    
    func resetearJuego(irInicio: Bool) {
        if irInicio{
            eleccionCategoria = true
        }
        resultados = false
        btnEmpezar = false
        listaElementos = []
        acertados = []
        incorrectas = []
        
    }
    
}

#Preview {
    ContentView()
}
