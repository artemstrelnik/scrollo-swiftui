import SwiftUI

struct HomeView: View {
    @EnvironmentObject var storyData: StoryViewModel
    @StateObject var postData = PostViewModel()
    var body: some View {
        VStack {
            HeaderBarView()
            ScrollView(showsIndicators: false) {
                StoriesList(storyData: storyData)
                ForEach(0..<postData.posts.count, id:\.self) {index in
                    PostView(post: postData.posts[index])
                }
                Spacer(minLength: 130)
            }
            .background(Color(hex: "#f7f7f7"))
            .frame(maxWidth: .infinity)
        }
        .background(Color(hex: "#f7f7f7"))
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryBoard()
    }
}
