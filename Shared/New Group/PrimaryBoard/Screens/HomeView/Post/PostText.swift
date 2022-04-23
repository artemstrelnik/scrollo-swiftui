import SwiftUI

struct PostText: View {
    var content: String
    var body: some View {
        VStack {
            Text(content)
                .font(Font.system(size:14, design: .default))
                .foregroundColor(Color.black)
                .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
