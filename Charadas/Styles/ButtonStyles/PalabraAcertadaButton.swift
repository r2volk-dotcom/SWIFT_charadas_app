import SwiftUI

struct PalabraAcertadaButton: View {
    let titulo: String
    let colorLetra: Color
    let colorFondo: Color
    let action: () -> Void
    
    @State var rotation: Double = 0
    
    @Binding var palabra: String
    
    var body: some View {
        
        Button(titulo) {
            action()
            withAnimation(.easeInOut(duration: 0.5)) {
                rotation += 360
            }
        }
        .foregroundColor(colorLetra)
        .bold()
        .font(.system(size: 120))
        .frame(width: 140, height: 140)
        .background(colorFondo)
        .cornerRadius(40)
        .rotationEffect(.degrees(rotation))
        
        
        
    }
}
