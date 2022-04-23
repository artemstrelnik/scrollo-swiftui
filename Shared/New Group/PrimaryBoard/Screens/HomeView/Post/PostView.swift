import SwiftUI

struct PostView: View {
    var post: PostModel
    var body: some View {
        VStack(alignment: .leading){
            VStack {
                PostHeader(photo: "post_photo", username: post.username, place: post.place)
                if post.type == "media" {
                    PostMedia()
                } else {
                    PostText(content: post.content)
                }
            }
            .background(Color.white)
            .cornerRadius(20)
            PostFooter(likes: post.likes, dislikes: post.dislikes, comments: post.comments)
        }
        .padding(.top, 24)
        .padding(.horizontal)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryBoard()
            .environment(\.sizeCategory, .large)
            .previewDevice("iPhone 8")
            .previewLayout(.device)
            
    }
}
