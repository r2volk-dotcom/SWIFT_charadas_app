
import SwiftUI

struct PartidaActiva: View {

    @State var segundosRestantes = 90
    @State var temporizadorEnEjecucion = false
    @State var rotationBien: Double = 0
    @State var rotationMal: Double = 0
    @State var palabra = ""
    @State var numeroAleatorio = 0
    

    @Binding var categoria: String
    @Binding var btnEmpezar: Bool
    @Binding var listaElementos:[String]
    @Binding var acertados:[String]
    @Binding var incorrectas:[String]
    @Binding var eleccionCategoria: Bool
    @Binding var resultados: Bool

    
    var body: some View {
        
        VStack {
            
            HStack{
                Text("\(categoria)")
                    .font(.system(size:30))
                    .padding(9)
                    .foregroundStyle(Color.primary)
                    .background(Color.blue.opacity(0.25))
                    .cornerRadius(15)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                Text("\(segundosRestantes)")
                    .font(.system(size:30))
                    .padding(9)
                    .foregroundStyle(segundosRestantes > 10 ? Color.primary : Color.red.opacity(0.7))
                    .background(Color.cyan.opacity(0.25))
                    .cornerRadius(15)
                    .padding(.vertical, 10)
                    .padding(.trailing, 10)
                    .padding(.leading, -10)
            }
            .padding(5)
            .background(Color.primary.opacity(0.15))
            .cornerRadius(20)
            .fontWeight(.black)
            
            Spacer()
                
            Text("\(palabra)")
                .font(.custom("Avenir", size: 50))
                .fontWeight(.black)
                .padding()
                .foregroundStyle(Color.primary)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            if btnEmpezar {
                HStack{
                    
                    Spacer()
                    
                    PalabraAcertadaButton(
                        titulo: "ㄨ",
                        colorLetra: Color.red,
                        colorFondo: Color.red.opacity(0.35),
                        action: {
                            listaElementos.removeAll { $0 == palabra }
                            incorrectas.append(palabra)
                            numeroAleatorio = Int.random(in: 0..<listaElementos.count)
                            palabra = listaElementos[numeroAleatorio]
                        },
                        palabra: $palabra)
                    
                    Spacer()
                    Spacer()
                    
                    PalabraAcertadaButton(
                        titulo: "✓",
                        colorLetra: Color.green,
                        colorFondo: Color.green.opacity(0.35),
                        action: {
                            listaElementos.removeAll { $0 == palabra }
                            acertados.append(palabra)
                            numeroAleatorio = Int.random(in: 0..<listaElementos.count)
                            palabra = listaElementos[numeroAleatorio]
                        },
                        palabra: $palabra)
                    
                    Spacer()
                    
                }
                .padding()
                
            }else{
                Button("Empezar") {
                    listaElementos = listas(cat:categoria)
                    numeroAleatorio = Int.random(in: 0..<listaElementos.count)
                    palabra = listaElementos[numeroAleatorio]
                    if !temporizadorEnEjecucion {
                        iniciarTemporizador()
                    }
                    btnEmpezar = true
                }
                .font(.custom("Avenir", size: 70))
                .fontWeight(.black)
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal, 20)
                .background(Color.green.opacity(0.7))
                .cornerRadius(30)
                .padding(.vertical,20)
                
            }
            
        }
            
        
    }
    
    func iniciarTemporizador() {
        
        segundosRestantes = 90
        temporizadorEnEjecucion = true
        var segundos = segundosRestantes
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { temporizador in
            if segundos > 0 {
                segundos -= 1
                segundosRestantes = segundos
            } else {
                temporizador.invalidate() // Detener el temporizador
                temporizadorEnEjecucion = false
                if segundosRestantes == 0{
                    resultados = true
                    segundosRestantes = 90
                    listaElementos = []
                    palabra = ""
                }
            }
        }
    }
    
}


