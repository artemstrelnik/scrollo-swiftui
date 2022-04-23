import SwiftUI

struct AuthBoard: View {
    var body: some View {
        VStack {
            Text("AuthBoard")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#36DCD8"),
                Color(hex: "#5B86E5")
            ]), startPoint: .leading, endPoint: .trailing)
        )
        .ignoresSafeArea(.all, edges: .all)
        
    }
}

struct AuthBoard_Previews: PreviewProvider {
    static var previews: some View {
        AuthBoard()
    }
}
