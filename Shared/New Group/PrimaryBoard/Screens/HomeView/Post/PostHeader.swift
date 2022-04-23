import SwiftUI

struct PostHeader: View {
    var photo: String
    var username: String
    var place: String
    var body: some View {
        HStack{
            Image(photo)
                .resizable()
                .frame(width: 35, height: 35)
            VStack {
                Text(username)
                    .font(Font.system(size:16, design: .default))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Text(place)
                    .font(Font.system(size:14, design: .default))
                    .foregroundColor(Color.black)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Image("menu")
        }
        .padding()
    }
}
