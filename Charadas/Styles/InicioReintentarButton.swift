
import SwiftUI

struct InicioReintentarButton: View{
    let titulo: String
    let color: Color
    let action: ()-> Void
    
    var body: some View {
        
        Button(titulo) {
            action()
        }
        .font(.custom("Avenir", size: 30))
        .fontWeight(.black)
        .foregroundStyle(Color.white)
        .padding()
        .background(color)
        .cornerRadius(20)
                
        
    }
    
}
