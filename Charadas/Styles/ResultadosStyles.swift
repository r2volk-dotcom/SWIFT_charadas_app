
import SwiftUI

struct ResultadosStyle: View {
    
    let titulo: String
    let textos: [String]
    let color: Color
    let colorFondo: Color
    let altura: CGFloat
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(titulo)
                .padding(.horizontal)
                .font(.custom("Palatino", size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.black)
            
            ScrollView {
                ForEach(textos, id: \.self) { texto in
                    Text(texto)
                        .padding(.bottom, 1)
                        .font(.custom("Avenir", size: 35))
                        .fontWeight(.black)
                        .foregroundStyle(color)
                }
                .frame(width: 330)
            }
            .padding()
            .background(color.opacity(0.3))
            .cornerRadius(20)
            .frame(width: 350, height: altura)
        }
    }
    
}
