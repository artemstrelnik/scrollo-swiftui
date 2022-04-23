import SwiftUI

struct PostFooter: View {
    var likes: Int
    var dislikes: Int
    var comments: Int
    var body: some View {
        HStack {
            HStack {
                Image("heart_active")
                Text("\(likes)")
            }
            .frame(width: 80)
            .padding(.vertical, 10)
            .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255, opacity: 0.9))
            )
            HStack {
                Image("dislike_inactive")
                Text("\(dislikes)")
            }
            HStack {
                Image("comments")
                Text("\(comments)")
            }
            Image("share")
            Spacer()
            Image("bookmark_inactive")
        }
        .padding(.horizontal, 5)
    }
}
