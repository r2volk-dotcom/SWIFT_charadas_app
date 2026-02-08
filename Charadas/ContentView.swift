
import SwiftUI

struct ContentView: View {
    
    @State var categoria = ""
    @State var btnEmpezar = false
    @State var listaElementos:[String] = []
    @State var acertados:[String] = []
    @State var incorrectas:[String] = []
    @State var eleccionCategoria = true
    @State var resultados = false

    var body: some View {
        
        
        if eleccionCategoria{
            
            Categorias(categoria:$categoria,
                       eleccionCategoria:$eleccionCategoria)
            
        } else if resultados {
            
            Total(acertados: $acertados,
                  incorrectas: $incorrectas,
                  listaElementos: $listaElementos,
                  eleccionCategoria: $eleccionCategoria,
                  resultados: $resultados, btnEmpezar: $btnEmpezar)
            
        }
        else{
            PartidaActiva(
                categoria: $categoria,
                btnEmpezar: $btnEmpezar,
                listaElementos: $listaElementos,
                acertados: $acertados,
                incorrectas: $incorrectas,
                eleccionCategoria: $eleccionCategoria,
                resultados: $resultados
            )
        }
        
    }

}

#Preview {
    ContentView()
}
