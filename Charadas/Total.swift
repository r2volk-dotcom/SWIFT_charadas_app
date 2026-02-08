
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
        
        Text("Correctas: \(acertados.count) ✅")
            .padding(.horizontal)
            .font(.custom("Palatino", size: 40))
            .frame(maxWidth: .infinity, alignment: .leading)
            .fontWeight(.black)
        
        ScrollView {
            ForEach(acertados, id: \.self) { texto in
                Text("\(texto)")
                    .padding(.bottom,1)
                    .font(.custom("Avenir", size: 35))
                    .fontWeight(.black)
                    .foregroundStyle(Color(red: 0.0, green: 0.5, blue: 0.0))
            }
            .frame(width: 330)
        }
        .padding()
        .background(Color.green.opacity(0.3))
        .cornerRadius(20)
        .frame(width: 350, height: 300)
        
        Spacer()

        
        Text("Malas: \(incorrectas.count) 🙄")
            .padding(.horizontal)
            .font(.custom("Palatino", size: 40))
            .frame(maxWidth: .infinity, alignment: .leading)
            .fontWeight(.black)
        
        ScrollView {
            ForEach(incorrectas, id: \.self) { texto in
                Text("\(texto)")
                    .padding(.bottom,1)
                    .font(.custom("Avenir", size: 35))
                    .fontWeight(.black)
                    .foregroundStyle(Color(red: 0.5, green: 0.0, blue: 0.0))
            }
            .frame(width: 330)
        }
        .padding()
        .background(Color.red.opacity(0.3))
        .cornerRadius(20)
        .frame(height: 150)
        .frame(width: 350)
        
        Spacer()
        
        HStack{
            Button("INICIO") {
                eleccionCategoria = true
                resultados = false
                btnEmpezar = false
                listaElementos = []
                acertados = []
                incorrectas = []
            }
            .font(.custom("Avenir", size: 30))
            .fontWeight(.black)
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.blue.opacity(0.7))
            .cornerRadius(20)
            
            Button("REINTENTAR") {
                
                resultados = false
                btnEmpezar = false
                listaElementos = []
                acertados = []
                incorrectas = []
            }
            .font(.custom("Avenir", size: 30))
            .fontWeight(.black)
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.purple.opacity(0.7))
            .cornerRadius(20)
        }
        .padding(.top)
        
    }
}

#Preview {
    ContentView()
}
